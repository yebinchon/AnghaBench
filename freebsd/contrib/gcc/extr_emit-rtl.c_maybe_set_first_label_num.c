
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CODE_LABEL_NUMBER (int ) ;
 scalar_t__ first_label_num ;

void
maybe_set_first_label_num (rtx x)
{
  if (CODE_LABEL_NUMBER (x) < first_label_num)
    first_label_num = CODE_LABEL_NUMBER (x);
}
