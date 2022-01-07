
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_replace_data {int to; int from; } ;
typedef int rtx ;


 int replace_rtx (int ,int ,int ) ;

__attribute__((used)) static void
see_replace_src (rtx *x, void *data)
{
  struct see_replace_data *d
    = (struct see_replace_data *) data;

  *x = replace_rtx (*x, d->from, d->to);
}
