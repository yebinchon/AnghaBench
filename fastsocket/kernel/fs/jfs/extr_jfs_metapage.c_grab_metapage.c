
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int page; int count; } ;


 int jfs_info (char*,struct metapage*) ;
 int lock_metapage (struct metapage*) ;
 int lock_page (int ) ;
 int page_cache_get (int ) ;
 int unlock_page (int ) ;

void grab_metapage(struct metapage * mp)
{
 jfs_info("grab_metapage: mp = 0x%p", mp);
 page_cache_get(mp->page);
 lock_page(mp->page);
 mp->count++;
 lock_metapage(mp);
 unlock_page(mp->page);
}
