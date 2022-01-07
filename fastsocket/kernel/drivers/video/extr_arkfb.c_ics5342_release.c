
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dac_info {int dummy; } ;


 int DAC_PSEUDO8_8 ;
 int ics5342_set_mode (struct dac_info*,int ) ;
 int kfree (struct dac_info*) ;

__attribute__((used)) static void ics5342_release(struct dac_info *info)
{
 ics5342_set_mode(info, DAC_PSEUDO8_8);
 kfree(info);
}
