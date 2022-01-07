
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ total_free; scalar_t__ total_dirty; } ;
struct ubifs_info {scalar_t__ dark_wm; TYPE_1__ lst; } ;


 int ENOSPC ;
 int dbg_dump_budg (struct ubifs_info*) ;
 int dbg_dump_lprops (struct ubifs_info*) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*) ;

__attribute__((used)) static int check_free_space(struct ubifs_info *c)
{
 ubifs_assert(c->dark_wm > 0);
 if (c->lst.total_free + c->lst.total_dirty < c->dark_wm) {
  ubifs_err("insufficient free space to mount in read/write mode");
  dbg_dump_budg(c);
  dbg_dump_lprops(c);
  return -ENOSPC;
 }
 return 0;
}
