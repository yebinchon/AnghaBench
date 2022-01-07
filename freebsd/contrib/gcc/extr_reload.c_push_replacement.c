
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replacement {int what; int mode; scalar_t__ subreg_loc; int * where; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int n_replacements ;
 scalar_t__ replace_reloads ;
 struct replacement* replacements ;

__attribute__((used)) static void
push_replacement (rtx *loc, int reloadnum, enum machine_mode mode)
{
  if (replace_reloads)
    {
      struct replacement *r = &replacements[n_replacements++];
      r->what = reloadnum;
      r->where = loc;
      r->subreg_loc = 0;
      r->mode = mode;
    }
}
