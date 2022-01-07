
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int ENOSPC ;
 int find_dirtiest_idx_leb (struct ubifs_info*) ;
 int find_dirty_idx_leb (struct ubifs_info*) ;
 int get_idx_gc_leb (struct ubifs_info*) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 int ubifs_release_lprops (struct ubifs_info*) ;

int ubifs_find_dirty_idx_leb(struct ubifs_info *c)
{
 int err;

 ubifs_get_lprops(c);





 err = find_dirtiest_idx_leb(c);


 if (err == -ENOSPC)
  err = find_dirty_idx_leb(c);


 if (err == -ENOSPC)
  err = get_idx_gc_leb(c);

 ubifs_release_lprops(c);
 return err;
}
