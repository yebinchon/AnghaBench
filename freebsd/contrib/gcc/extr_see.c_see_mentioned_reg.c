
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_mentioned_reg_data {int mentioned; int reg; } ;
typedef int rtx ;


 scalar_t__ reg_mentioned_p (int ,int ) ;

__attribute__((used)) static void
see_mentioned_reg (rtx *x, void *data)
{
  struct see_mentioned_reg_data *d
    = (struct see_mentioned_reg_data *) data;

  if (reg_mentioned_p (d->reg, *x))
    d->mentioned = 1;
}
