
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* ops; } ;
struct page {scalar_t__ index; } ;
struct dentry {TYPE_2__* d_inode; } ;
typedef int loff_t ;
struct TYPE_4__ {int i_sb; int i_atime; } ;
struct TYPE_3__ {int (* read ) (TYPE_2__*,int,unsigned int,char*) ;} ;


 int DENTRY_PATH (struct dentry*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_SIZE ;
 int SMB_O_RDONLY ;
 int SetPageUptodate (struct page*) ;
 int VERBOSE (char*,int ,int,int,unsigned int) ;
 int current_fs_time (int ) ;
 int flush_dcache_page (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (char*,int ,int) ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 unsigned int smb_get_rsize (struct smb_sb_info*) ;
 int smb_open (struct dentry*,int ) ;
 int stub1 (TYPE_2__*,int,unsigned int,char*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
smb_readpage_sync(struct dentry *dentry, struct page *page)
{
 char *buffer = kmap(page);
 loff_t offset = (loff_t)page->index << PAGE_CACHE_SHIFT;
 struct smb_sb_info *server = server_from_dentry(dentry);
 unsigned int rsize = smb_get_rsize(server);
 int count = PAGE_SIZE;
 int result;

 VERBOSE("file %s/%s, count=%d@%Ld, rsize=%d\n",
  DENTRY_PATH(dentry), count, offset, rsize);

 result = smb_open(dentry, SMB_O_RDONLY);
 if (result < 0)
  goto io_error;

 do {
  if (count < rsize)
   rsize = count;

  result = server->ops->read(dentry->d_inode,offset,rsize,buffer);
  if (result < 0)
   goto io_error;

  count -= result;
  offset += result;
  buffer += result;
  dentry->d_inode->i_atime =
   current_fs_time(dentry->d_inode->i_sb);
  if (result < rsize)
   break;
 } while (count);

 memset(buffer, 0, count);
 flush_dcache_page(page);
 SetPageUptodate(page);
 result = 0;

io_error:
 kunmap(page);
 unlock_page(page);
 return result;
}
