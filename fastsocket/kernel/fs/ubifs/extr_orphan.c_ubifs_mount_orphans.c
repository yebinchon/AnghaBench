
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int orph_buf; int leb_size; int max_orphans; } ;


 int ENOMEM ;
 int kill_orphans (struct ubifs_info*) ;
 int tot_avail_orphs (struct ubifs_info*) ;
 int ubifs_clear_orphans (struct ubifs_info*) ;
 int vmalloc (int ) ;

int ubifs_mount_orphans(struct ubifs_info *c, int unclean, int read_only)
{
 int err = 0;

 c->max_orphans = tot_avail_orphs(c);

 if (!read_only) {
  c->orph_buf = vmalloc(c->leb_size);
  if (!c->orph_buf)
   return -ENOMEM;
 }

 if (unclean)
  err = kill_orphans(c);
 else if (!read_only)
  err = ubifs_clear_orphans(c);

 return err;
}
