
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;


 int CR97 ;
 int VIACR ;
 int seq_printf (struct seq_file*,char*,int) ;
 int viafb_read_reg (int ,int ) ;

__attribute__((used)) static int viafb_dfph_proc_show(struct seq_file *m, void *v)
{
 u8 dfp_high = 0;
 dfp_high = viafb_read_reg(VIACR, CR97) & 0x0f;
 seq_printf(m, "%x\n", dfp_high);
 return 0;
}
