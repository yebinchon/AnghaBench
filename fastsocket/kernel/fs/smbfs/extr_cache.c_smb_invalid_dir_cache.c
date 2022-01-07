
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ time; } ;
union smb_dir_cache {TYPE_1__ head; } ;
struct smb_sb_info {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_data; } ;


 int PageUptodate (struct page*) ;
 scalar_t__ SMB_MAX_AGE (struct smb_sb_info*) ;
 int SetPageUptodate (struct page*) ;
 struct page* grab_cache_page (int *,int ) ;
 scalar_t__ jiffies ;
 union smb_dir_cache* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;
 struct smb_sb_info* server_from_inode (struct inode*) ;
 int unlock_page (struct page*) ;

void
smb_invalid_dir_cache(struct inode * dir)
{
 struct smb_sb_info *server = server_from_inode(dir);
 union smb_dir_cache *cache = ((void*)0);
 struct page *page = ((void*)0);

 page = grab_cache_page(&dir->i_data, 0);
 if (!page)
  goto out;

 if (!PageUptodate(page))
  goto out_unlock;

 cache = kmap(page);
 cache->head.time = jiffies - SMB_MAX_AGE(server);

 kunmap(page);
 SetPageUptodate(page);
out_unlock:
 unlock_page(page);
 page_cache_release(page);
out:
 return;
}
