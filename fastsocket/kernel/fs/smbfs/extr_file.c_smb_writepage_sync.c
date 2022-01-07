
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* ops; } ;
struct page {scalar_t__ index; } ;
struct inode {unsigned long i_size; int i_sb; int i_atime; int i_mtime; int i_ino; } ;
typedef unsigned long loff_t ;
struct TYPE_4__ {int flags; int fileid; } ;
struct TYPE_3__ {int (* write ) (struct inode*,unsigned long,unsigned int,char*) ;} ;


 unsigned long PAGE_CACHE_SHIFT ;
 int PARANOIA (char*,unsigned int,int) ;
 int SMB_F_LOCALWRITE ;
 TYPE_2__* SMB_I (struct inode*) ;
 int VERBOSE (char*,int ,int ,unsigned int,unsigned long,unsigned int) ;
 int current_fs_time (int ) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 struct smb_sb_info* server_from_inode (struct inode*) ;
 unsigned int smb_get_wsize (struct smb_sb_info*) ;
 int stub1 (struct inode*,unsigned long,unsigned int,char*) ;

__attribute__((used)) static int
smb_writepage_sync(struct inode *inode, struct page *page,
     unsigned long pageoffset, unsigned int count)
{
 loff_t offset;
 char *buffer = kmap(page) + pageoffset;
 struct smb_sb_info *server = server_from_inode(inode);
 unsigned int wsize = smb_get_wsize(server);
 int ret = 0;

 offset = ((loff_t)page->index << PAGE_CACHE_SHIFT) + pageoffset;
 VERBOSE("file ino=%ld, fileid=%d, count=%d@%Ld, wsize=%d\n",
  inode->i_ino, SMB_I(inode)->fileid, count, offset, wsize);

 do {
  int write_ret;

  if (count < wsize)
   wsize = count;

  write_ret = server->ops->write(inode, offset, wsize, buffer);
  if (write_ret < 0) {
   PARANOIA("failed write, wsize=%d, write_ret=%d\n",
     wsize, write_ret);
   ret = write_ret;
   break;
  }






  buffer += wsize;
  offset += wsize;
  count -= wsize;



  inode->i_mtime = inode->i_atime = current_fs_time(inode->i_sb);
  SMB_I(inode)->flags |= SMB_F_LOCALWRITE;
  if (offset > inode->i_size)
   inode->i_size = offset;
 } while (count);

 kunmap(page);
 return ret;
}
