
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u8 ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; int netfid; } ;
typedef int __u16 ;
struct TYPE_5__ {int tgid; } ;
struct TYPE_4__ {scalar_t__ EndOfFile; } ;
typedef TYPE_1__ FILE_ALL_INFO ;


 int CIFSParseMFSymlink (char*,unsigned int,unsigned int*,char**) ;
 int CIFSSMBClose (int const,struct cifs_tcon*,int ) ;
 int CIFSSMBOpen (int const,struct cifs_tcon*,unsigned char const*,int ,int ,int ,int *,int*,TYPE_1__*,struct nls_table const*,int) ;
 int CIFSSMBRead (int const,struct cifs_io_parms*,unsigned int*,char**,int*) ;
 int CIFS_MF_SYMLINK_FILE_SIZE ;
 int CIFS_NO_BUFFER ;
 int CREATE_NOT_DIR ;
 int EINVAL ;
 int ENOMEM ;
 int FILE_OPEN ;
 int GENERIC_READ ;
 int GFP_KERNEL ;
 scalar_t__ cpu_to_le64 (int ) ;
 TYPE_2__* current ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;

__attribute__((used)) static int
CIFSQueryMFSymLink(const int xid, struct cifs_tcon *tcon,
     const unsigned char *searchName, char **symlinkinfo,
     const struct nls_table *nls_codepage, int remap)
{
 int rc;
 int oplock = 0;
 __u16 netfid = 0;
 u8 *buf;
 char *pbuf;
 unsigned int bytes_read = 0;
 int buf_type = CIFS_NO_BUFFER;
 unsigned int link_len = 0;
 struct cifs_io_parms io_parms;
 FILE_ALL_INFO file_info;

 rc = CIFSSMBOpen(xid, tcon, searchName, FILE_OPEN, GENERIC_READ,
    CREATE_NOT_DIR, &netfid, &oplock, &file_info,
    nls_codepage, remap);
 if (rc != 0)
  return rc;

 if (file_info.EndOfFile != cpu_to_le64(CIFS_MF_SYMLINK_FILE_SIZE)) {
  CIFSSMBClose(xid, tcon, netfid);

  return -EINVAL;
 }

 buf = kmalloc(CIFS_MF_SYMLINK_FILE_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 pbuf = buf;
 io_parms.netfid = netfid;
 io_parms.pid = current->tgid;
 io_parms.tcon = tcon;
 io_parms.offset = 0;
 io_parms.length = CIFS_MF_SYMLINK_FILE_SIZE;

 rc = CIFSSMBRead(xid, &io_parms, &bytes_read, &pbuf, &buf_type);
 CIFSSMBClose(xid, tcon, netfid);
 if (rc != 0) {
  kfree(buf);
  return rc;
 }

 rc = CIFSParseMFSymlink(buf, bytes_read, &link_len, symlinkinfo);
 kfree(buf);
 if (rc != 0)
  return rc;

 return 0;
}
