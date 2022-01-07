
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start_check_freq; unsigned int testclk_sel; int tstcount_rst; unsigned int test_count; } ;
union clk_test_cntl_u {TYPE_1__ f; scalar_t__ val; } ;
typedef int u32 ;


 scalar_t__ mmCLK_TEST_CNTL ;
 scalar_t__ readl (scalar_t__) ;
 scalar_t__ remapped_regs ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static unsigned int w100_get_testcount(unsigned int testclk_sel)
{
 union clk_test_cntl_u clk_test_cntl;

 udelay(5);


 clk_test_cntl.f.start_check_freq = 0x0;
 clk_test_cntl.f.testclk_sel = testclk_sel;
 clk_test_cntl.f.tstcount_rst = 0x1;
 writel((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);

 clk_test_cntl.f.tstcount_rst = 0x0;
 writel((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);


 clk_test_cntl.f.start_check_freq = 0x1;
 writel((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);


 udelay(20);


 clk_test_cntl.val = readl(remapped_regs + mmCLK_TEST_CNTL);
 clk_test_cntl.f.start_check_freq = 0x0;
 writel((u32) (clk_test_cntl.val), remapped_regs + mmCLK_TEST_CNTL);

 return clk_test_cntl.f.test_count;
}
