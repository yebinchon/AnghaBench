
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dac_info {int data; int (* dac_read_regs ) (int ,int *,int) ;} ;


 int stub1 (int ,int *,int) ;

__attribute__((used)) static inline u8 dac_read_reg(struct dac_info *info, u8 reg)
{
 u8 code[2] = {reg, 0};
 info->dac_read_regs(info->data, code, 1);
 return code[1];
}
