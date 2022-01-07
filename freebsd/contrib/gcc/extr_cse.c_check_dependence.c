
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check_dependence_data {int addr; int mode; int exp; } ;
typedef int rtx ;


 scalar_t__ MEM_P (int ) ;
 int canon_true_dependence (int ,int ,int ,int ,int ) ;
 int cse_rtx_varies_p ;

__attribute__((used)) static int
check_dependence (rtx *x, void *data)
{
  struct check_dependence_data *d = (struct check_dependence_data *) data;
  if (*x && MEM_P (*x))
    return canon_true_dependence (d->exp, d->mode, d->addr, *x,
          cse_rtx_varies_p);
  else
    return 0;
}
