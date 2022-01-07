
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;


 int CR9B ;
 int SR65 ;
 int VIACR ;
 int VIASR ;
 int seq_printf (struct seq_file*,char*,int,int,int) ;
 int viafb_read_reg (int ,int ) ;

__attribute__((used)) static int viafb_dvp1_proc_show(struct seq_file *m, void *v)
{
 u8 dvp1 = 0, dvp1_data_dri = 0, dvp1_clk_dri = 0;
 dvp1 = viafb_read_reg(VIACR, CR9B) & 0x0f;
 dvp1_data_dri = (viafb_read_reg(VIASR, SR65) & 0x0c) >> 2;
 dvp1_clk_dri = viafb_read_reg(VIASR, SR65) & 0x03;
 seq_printf(m, "%x %x %x\n", dvp1, dvp1_data_dri, dvp1_clk_dri);
 return 0;
}
