
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int commsqual_bh; } ;
typedef TYPE_1__ hfa384x_t ;


 int schedule_work (int *) ;

void prism2sta_commsqual_timer(unsigned long data)
{
 hfa384x_t *hw = (hfa384x_t *) data;

 schedule_work(&hw->commsqual_bh);
}
