
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S3C2410_WTCON ;
 unsigned long S3C2410_WTCON_ENABLE ;
 unsigned long S3C2410_WTCON_RSTEN ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ wdt_base ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void __s3c2410wdt_stop(void)
{
 unsigned long wtcon;

 wtcon = readl(wdt_base + S3C2410_WTCON);
 wtcon &= ~(S3C2410_WTCON_ENABLE | S3C2410_WTCON_RSTEN);
 writel(wtcon, wdt_base + S3C2410_WTCON);
}
