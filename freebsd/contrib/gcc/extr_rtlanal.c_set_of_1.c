
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_of_data {int found; int pat; } ;
typedef int rtx ;


 int MEM_P (int ) ;
 scalar_t__ reg_overlap_mentioned_p (int ,int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

__attribute__((used)) static void
set_of_1 (rtx x, rtx pat, void *data1)
{
   struct set_of_data *data = (struct set_of_data *) (data1);
   if (rtx_equal_p (x, data->pat)
       || (!MEM_P (x) && reg_overlap_mentioned_p (data->pat, x)))
     data->found = pat;
}
