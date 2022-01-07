
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replacement {int mode; int what; int * where; } ;
typedef int rtx ;


 int n_replacements ;
 int push_replacement (int *,int ,int ) ;
 struct replacement* replacements ;

__attribute__((used)) static void
dup_replacements (rtx *dup_loc, rtx *orig_loc)
{
  int i, n = n_replacements;

  for (i = 0; i < n; i++)
    {
      struct replacement *r = &replacements[i];
      if (r->where == orig_loc)
 push_replacement (dup_loc, r->what, r->mode);
    }
}
