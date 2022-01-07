
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hsotg {scalar_t__ regs; } ;


 scalar_t__ S3C_GNPTXFSIZ ;
 int S3C_GNPTXFSIZ_NPTxFDep (int) ;
 int S3C_GNPTXFSIZ_NPTxFStAddr (int) ;
 scalar_t__ S3C_GRXFSIZ ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c_hsotg_init_fifo(struct s3c_hsotg *hsotg)
{
 writel(2048, hsotg->regs + S3C_GRXFSIZ);
 writel(S3C_GNPTXFSIZ_NPTxFStAddr(2048) |
        S3C_GNPTXFSIZ_NPTxFDep(0x1C0),
        hsotg->regs + S3C_GNPTXFSIZ);
}
