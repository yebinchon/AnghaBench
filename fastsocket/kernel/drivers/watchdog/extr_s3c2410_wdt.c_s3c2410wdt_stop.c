
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __s3c2410wdt_stop () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;

__attribute__((used)) static void s3c2410wdt_stop(void)
{
 spin_lock(&wdt_lock);
 __s3c2410wdt_stop();
 spin_unlock(&wdt_lock);
}
