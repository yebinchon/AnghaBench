
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; int netfid; } ;
struct cifs_fattr {int cf_eof; void* cf_dtype; int cf_mode; void* cf_rdev; } ;
typedef int __u64 ;
typedef int __u16 ;
typedef int __le64 ;
struct TYPE_2__ {int tgid; } ;


 int CIFSSMBClose (int,struct cifs_tcon*,int ) ;
 int CIFSSMBOpen (int,struct cifs_tcon*,unsigned char const*,int ,int ,int ,int *,int*,int *,int ,int) ;
 int CIFSSMBRead (int,struct cifs_io_parms*,unsigned int*,char**,int*) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CIFS_NO_BUFFER ;
 int CREATE_NOT_DIR ;
 void* DT_BLK ;
 void* DT_CHR ;
 void* DT_FIFO ;
 void* DT_LNK ;
 void* DT_REG ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int FILE_OPEN ;
 int GENERIC_READ ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 void* MKDEV (int ,int ) ;
 int PTR_ERR (struct tcon_link*) ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFIFO ;
 int S_IFLNK ;
 int S_IFMT ;
 int S_IFREG ;
 int cFYI (int,char*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 TYPE_1__* current ;
 int le64_to_cpu (int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int
cifs_sfu_type(struct cifs_fattr *fattr, const unsigned char *path,
       struct cifs_sb_info *cifs_sb, int xid)
{
 int rc;
 int oplock = 0;
 __u16 netfid;
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 struct cifs_io_parms io_parms;
 char buf[24];
 unsigned int bytes_read;
 char *pbuf;

 pbuf = buf;

 fattr->cf_mode &= ~S_IFMT;

 if (fattr->cf_eof == 0) {
  fattr->cf_mode |= S_IFIFO;
  fattr->cf_dtype = DT_FIFO;
  return 0;
 } else if (fattr->cf_eof < 8) {
  fattr->cf_mode |= S_IFREG;
  fattr->cf_dtype = DT_REG;
  return -EINVAL;
 }

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);
 tcon = tlink_tcon(tlink);

 rc = CIFSSMBOpen(xid, tcon, path, FILE_OPEN, GENERIC_READ,
    CREATE_NOT_DIR, &netfid, &oplock, ((void*)0),
    cifs_sb->local_nls,
    cifs_sb->mnt_cifs_flags &
    CIFS_MOUNT_MAP_SPECIAL_CHR);
 if (rc == 0) {
  int buf_type = CIFS_NO_BUFFER;

  io_parms.netfid = netfid;
  io_parms.pid = current->tgid;
  io_parms.tcon = tcon;
  io_parms.offset = 0;
  io_parms.length = 24;
  rc = CIFSSMBRead(xid, &io_parms, &bytes_read, &pbuf,
     &buf_type);
  if ((rc == 0) && (bytes_read >= 8)) {
   if (memcmp("IntxBLK", pbuf, 8) == 0) {
    cFYI(1, "Block device");
    fattr->cf_mode |= S_IFBLK;
    fattr->cf_dtype = DT_BLK;
    if (bytes_read == 24) {

     __u64 mjr;
     __u64 mnr;
     mjr = le64_to_cpu(*(__le64 *)(pbuf+8));
     mnr = le64_to_cpu(*(__le64 *)(pbuf+16));
     fattr->cf_rdev = MKDEV(mjr, mnr);
    }
   } else if (memcmp("IntxCHR", pbuf, 8) == 0) {
    cFYI(1, "Char device");
    fattr->cf_mode |= S_IFCHR;
    fattr->cf_dtype = DT_CHR;
    if (bytes_read == 24) {

     __u64 mjr;
     __u64 mnr;
     mjr = le64_to_cpu(*(__le64 *)(pbuf+8));
     mnr = le64_to_cpu(*(__le64 *)(pbuf+16));
     fattr->cf_rdev = MKDEV(mjr, mnr);
    }
   } else if (memcmp("IntxLNK", pbuf, 7) == 0) {
    cFYI(1, "Symlink");
    fattr->cf_mode |= S_IFLNK;
    fattr->cf_dtype = DT_LNK;
   } else {
    fattr->cf_mode |= S_IFREG;
    fattr->cf_dtype = DT_REG;
    rc = -EOPNOTSUPP;
   }
  } else {
   fattr->cf_mode |= S_IFREG;
   fattr->cf_dtype = DT_REG;
   rc = -EOPNOTSUPP;
  }
  CIFSSMBClose(xid, tcon, netfid);
 }
 cifs_put_tlink(tlink);
 return rc;
}
