
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct kstatfs {scalar_t__ f_ffree; scalar_t__ f_files; int f_namelen; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_3__ {int Capability; } ;
struct cifs_tcon {TYPE_2__* ses; TYPE_1__ fsUnixInfo; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_4__ {int capabilities; } ;


 int CAP_NT_SMBS ;
 int CAP_UNIX ;
 int CIFSSMBQFSInfo (int,struct cifs_tcon*,struct kstatfs*) ;
 int CIFSSMBQFSPosixInfo (int,struct cifs_tcon*,struct kstatfs*) ;
 int CIFS_MAGIC_NUMBER ;
 int CIFS_POSIX_EXTENSIONS ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int EOPNOTSUPP ;
 int FreeXid (int) ;
 int GetXid () ;
 int PATH_MAX ;
 int SMBOldQFSInfo (int,struct cifs_tcon*,struct kstatfs*) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int
cifs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
 int rc = -EOPNOTSUPP;
 int xid;

 xid = GetXid();

 buf->f_type = CIFS_MAGIC_NUMBER;
 buf->f_namelen = PATH_MAX;
 buf->f_files = 0;
 buf->f_ffree = 0;




 if ((tcon->ses->capabilities & CAP_UNIX) &&
     (CIFS_POSIX_EXTENSIONS & le64_to_cpu(tcon->fsUnixInfo.Capability)))
  rc = CIFSSMBQFSPosixInfo(xid, tcon, buf);





 if (rc && (tcon->ses->capabilities & CAP_NT_SMBS))
  rc = CIFSSMBQFSInfo(xid, tcon, buf);






 if (rc)
  rc = SMBOldQFSInfo(xid, tcon, buf);

 FreeXid(xid);
 return 0;
}
