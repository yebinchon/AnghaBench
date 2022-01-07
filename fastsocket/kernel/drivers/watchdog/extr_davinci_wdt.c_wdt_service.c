
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDKEY_SEQ0 ;
 int WDKEY_SEQ1 ;
 scalar_t__ WDTCR ;
 int io_lock ;
 int iowrite32 (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ wdt_base ;

__attribute__((used)) static void wdt_service(void)
{
 spin_lock(&io_lock);


 iowrite32(WDKEY_SEQ0, wdt_base + WDTCR);

 iowrite32(WDKEY_SEQ1, wdt_base + WDTCR);

 spin_unlock(&io_lock);
}
