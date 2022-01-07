
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S3C2410_WTCNT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ wdt_base ;
 int wdt_count ;
 int wdt_lock ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3c2410wdt_keepalive(void)
{
 spin_lock(&wdt_lock);
 writel(wdt_count, wdt_base + S3C2410_WTCNT);
 spin_unlock(&wdt_lock);
}
