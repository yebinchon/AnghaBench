
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int lpt_init_rd (struct ubifs_info*) ;
 int lpt_init_wr (struct ubifs_info*) ;

int ubifs_lpt_init(struct ubifs_info *c, int rd, int wr)
{
 int err;

 if (rd) {
  err = lpt_init_rd(c);
  if (err)
   return err;
 }

 if (wr) {
  err = lpt_init_wr(c);
  if (err)
   return err;
 }

 return 0;
}
