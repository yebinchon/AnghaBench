
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ics5342_info {int dummy; } ;
struct dac_info {void* data; int dac_write_regs; int dac_read_regs; int * dacops; } ;
typedef int dac_write_regs_t ;
typedef int dac_read_regs_t ;
struct TYPE_2__ {int mode; } ;


 TYPE_1__* DAC_PAR (struct dac_info*) ;
 int DAC_PSEUDO8_8 ;
 int GFP_KERNEL ;
 int ics5342_ops ;
 struct dac_info* kzalloc (int,int ) ;

__attribute__((used)) static struct dac_info * ics5342_init(dac_read_regs_t drr, dac_write_regs_t dwr, void *data)
{
 struct dac_info *info = kzalloc(sizeof(struct ics5342_info), GFP_KERNEL);

 if (! info)
  return ((void*)0);

 info->dacops = &ics5342_ops;
 info->dac_read_regs = drr;
 info->dac_write_regs = dwr;
 info->data = data;
 DAC_PAR(info)->mode = DAC_PSEUDO8_8;
 return info;
}
