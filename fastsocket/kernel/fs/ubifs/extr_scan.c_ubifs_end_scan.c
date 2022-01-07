
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_scan_leb {int endpt; } ;
struct ubifs_info {int min_io_size; } ;


 int ALIGN (int,int) ;
 int dbg_scan (char*,int,int) ;
 int ubifs_assert (int) ;

void ubifs_end_scan(const struct ubifs_info *c, struct ubifs_scan_leb *sleb,
      int lnum, int offs)
{
 lnum = lnum;
 dbg_scan("stop scanning LEB %d at offset %d", lnum, offs);
 ubifs_assert(offs % c->min_io_size == 0);

 sleb->endpt = ALIGN(offs, c->min_io_size);
}
