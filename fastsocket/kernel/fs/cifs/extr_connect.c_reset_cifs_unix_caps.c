
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_vol {scalar_t__ posix_paths; scalar_t__ no_psx_acl; scalar_t__ no_linux_ext; } ;
struct TYPE_2__ {scalar_t__ Capability; } ;
struct cifs_tcon {int unix_ext; TYPE_1__ fsUnixInfo; } ;
struct cifs_sb_info {scalar_t__ prepathlen; int * prepath; int mnt_cifs_flags; } ;
typedef int __u64 ;


 int CIFSSMBQFSUnixInfo (int,struct cifs_tcon*) ;
 scalar_t__ CIFSSMBSetFSUnixInfo (int,struct cifs_tcon*,int) ;
 int CIFS_DIR_SEP (struct cifs_sb_info*) ;
 int CIFS_MOUNT_POSIXACL ;
 int CIFS_MOUNT_POSIX_PATHS ;
 int CIFS_UNIX_CAP_MASK ;
 int CIFS_UNIX_EXTATTR_CAP ;
 int CIFS_UNIX_FCNTL_CAP ;
 int CIFS_UNIX_LARGE_READ_CAP ;
 int CIFS_UNIX_LARGE_WRITE_CAP ;
 int CIFS_UNIX_POSIX_ACL_CAP ;
 int CIFS_UNIX_POSIX_PATHNAMES_CAP ;
 int CIFS_UNIX_TRANSPORT_ENCRYPTION_CAP ;
 int CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP ;
 int CIFS_UNIX_XATTR_CAP ;
 int cERROR (int,char*) ;
 int cFYI (int,char*,...) ;
 int le64_to_cpu (scalar_t__) ;

void reset_cifs_unix_caps(int xid, struct cifs_tcon *tcon,
     struct cifs_sb_info *cifs_sb, struct smb_vol *vol_info)
{
 __u64 saved_cap = le64_to_cpu(tcon->fsUnixInfo.Capability);

 if (vol_info && vol_info->no_linux_ext) {
  tcon->fsUnixInfo.Capability = 0;
  tcon->unix_ext = 0;
  cFYI(1, "Linux protocol extensions disabled");
  return;
 } else if (vol_info)
  tcon->unix_ext = 1;

 if (tcon->unix_ext == 0) {
  cFYI(1, "Unix extensions disabled so not set on reconnect");
  return;
 }

 if (!CIFSSMBQFSUnixInfo(xid, tcon)) {
  __u64 cap = le64_to_cpu(tcon->fsUnixInfo.Capability);
  cFYI(1, "unix caps which server supports %lld", cap);


  if (vol_info == ((void*)0)) {


   if ((saved_cap & CIFS_UNIX_POSIX_ACL_CAP) == 0)
    cap &= ~CIFS_UNIX_POSIX_ACL_CAP;
   if ((saved_cap & CIFS_UNIX_POSIX_PATHNAMES_CAP) == 0) {
    if (cap & CIFS_UNIX_POSIX_PATHNAMES_CAP)
     cERROR(1, "POSIXPATH support change");
    cap &= ~CIFS_UNIX_POSIX_PATHNAMES_CAP;
   } else if ((cap & CIFS_UNIX_POSIX_PATHNAMES_CAP) == 0) {
    cERROR(1, "possible reconnect error");
    cERROR(1, "server disabled POSIX path support");
   }
  }

  if (cap & CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP)
   cERROR(1, "per-share encryption not supported yet");

  cap &= CIFS_UNIX_CAP_MASK;
  if (vol_info && vol_info->no_psx_acl)
   cap &= ~CIFS_UNIX_POSIX_ACL_CAP;
  else if (CIFS_UNIX_POSIX_ACL_CAP & cap) {
   cFYI(1, "negotiated posix acl support");
   if (cifs_sb)
    cifs_sb->mnt_cifs_flags |=
     CIFS_MOUNT_POSIXACL;
  }

  if (vol_info && vol_info->posix_paths == 0)
   cap &= ~CIFS_UNIX_POSIX_PATHNAMES_CAP;
  else if (cap & CIFS_UNIX_POSIX_PATHNAMES_CAP) {
   cFYI(1, "negotiate posix pathnames");
   if (cifs_sb)
    cifs_sb->mnt_cifs_flags |=
     CIFS_MOUNT_POSIX_PATHS;
  }




  if (cifs_sb && (cifs_sb->prepathlen > 0))
   cifs_sb->prepath[0] = CIFS_DIR_SEP(cifs_sb);

  cFYI(1, "Negotiate caps 0x%x", (int)cap);
  if (CIFSSMBSetFSUnixInfo(xid, tcon, cap)) {
   if (vol_info == ((void*)0)) {
    cFYI(1, "resetting capabilities failed");
   } else
    cERROR(1, "Negotiating Unix capabilities "
        "with the server failed.  Consider "
        "mounting with the Unix Extensions\n"
        "disabled, if problems are found, "
        "by specifying the nounix mount "
        "option.");

  }
 }
}
