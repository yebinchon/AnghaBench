
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int layout_in_empty_space (struct ubifs_info*) ;
 int layout_in_gaps (struct ubifs_info*,int) ;

__attribute__((used)) static int layout_commit(struct ubifs_info *c, int no_space, int cnt)
{
 int err;

 if (no_space) {
  err = layout_in_gaps(c, cnt);
  if (err)
   return err;
 }
 err = layout_in_empty_space(c);
 return err;
}
