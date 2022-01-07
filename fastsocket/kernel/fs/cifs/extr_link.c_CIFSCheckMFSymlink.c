
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u8 ;
struct tcon_link {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; int netfid; } ;
struct cifs_fattr {unsigned int cf_eof; int cf_mode; int cf_dtype; } ;
typedef int __u16 ;
struct TYPE_5__ {int tgid; } ;
struct TYPE_4__ {scalar_t__ EndOfFile; } ;
typedef TYPE_1__ FILE_ALL_INFO ;


 int CIFSCouldBeMFSymlink (struct cifs_fattr*) ;
 int CIFSParseMFSymlink (char*,unsigned int,unsigned int*,int *) ;
 int CIFSSMBClose (int,struct cifs_tcon*,int ) ;
 int CIFSSMBOpen (int,struct cifs_tcon*,unsigned char const*,int ,int ,int ,int *,int*,TYPE_1__*,int ,int) ;
 int CIFSSMBRead (int,struct cifs_io_parms*,unsigned int*,char**,int*) ;
 int CIFS_MF_SYMLINK_FILE_SIZE ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int CIFS_NO_BUFFER ;
 int CREATE_NOT_DIR ;
 int DT_LNK ;
 int EINVAL ;
 int ENOMEM ;
 int FILE_OPEN ;
 int GENERIC_READ ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int S_IFLNK ;
 int S_IFMT ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 scalar_t__ cpu_to_le64 (int ) ;
 TYPE_2__* current ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int
CIFSCheckMFSymlink(struct cifs_fattr *fattr,
     const unsigned char *path,
     struct cifs_sb_info *cifs_sb, int xid)
{
 int rc;
 int oplock = 0;
 __u16 netfid = 0;
 struct tcon_link *tlink;
 struct cifs_tcon *pTcon;
 struct cifs_io_parms io_parms;
 u8 *buf;
 char *pbuf;
 unsigned int bytes_read = 0;
 int buf_type = CIFS_NO_BUFFER;
 unsigned int link_len = 0;
 FILE_ALL_INFO file_info;

 if (!CIFSCouldBeMFSymlink(fattr))

  return 0;

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);
 pTcon = tlink_tcon(tlink);

 rc = CIFSSMBOpen(xid, pTcon, path, FILE_OPEN, GENERIC_READ,
    CREATE_NOT_DIR, &netfid, &oplock, &file_info,
    cifs_sb->local_nls,
    cifs_sb->mnt_cifs_flags &
    CIFS_MOUNT_MAP_SPECIAL_CHR);
 if (rc != 0)
  goto out;

 if (file_info.EndOfFile != cpu_to_le64(CIFS_MF_SYMLINK_FILE_SIZE)) {
  CIFSSMBClose(xid, pTcon, netfid);

  goto out;
 }

 buf = kmalloc(CIFS_MF_SYMLINK_FILE_SIZE, GFP_KERNEL);
 if (!buf) {
  rc = -ENOMEM;
  goto out;
 }
 pbuf = buf;
 io_parms.netfid = netfid;
 io_parms.pid = current->tgid;
 io_parms.tcon = pTcon;
 io_parms.offset = 0;
 io_parms.length = CIFS_MF_SYMLINK_FILE_SIZE;

 rc = CIFSSMBRead(xid, &io_parms, &bytes_read, &pbuf, &buf_type);
 CIFSSMBClose(xid, pTcon, netfid);
 if (rc != 0) {
  kfree(buf);
  goto out;
 }

 rc = CIFSParseMFSymlink(buf, bytes_read, &link_len, ((void*)0));
 kfree(buf);
 if (rc == -EINVAL) {

  rc = 0;
  goto out;
 }

 if (rc != 0)
  goto out;


 fattr->cf_eof = link_len;
 fattr->cf_mode &= ~S_IFMT;
 fattr->cf_mode |= S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
 fattr->cf_dtype = DT_LNK;
out:
 cifs_put_tlink(tlink);
 return rc;
}
