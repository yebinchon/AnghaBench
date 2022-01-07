
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ESB_LOCK_REG ;
 int ESB_RELOAD_REG ;
 int ESB_WDT_ENABLE ;
 int ESB_WDT_RELOAD ;
 int esb_lock ;
 int esb_pci ;
 int esb_unlock_registers () ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writew (int ,int ) ;

__attribute__((used)) static int esb_timer_stop(void)
{
 u8 val;

 spin_lock(&esb_lock);

 esb_unlock_registers();
 writew(ESB_WDT_RELOAD, ESB_RELOAD_REG);

 pci_write_config_byte(esb_pci, ESB_LOCK_REG, 0x0);
 pci_read_config_byte(esb_pci, ESB_LOCK_REG, &val);
 spin_unlock(&esb_lock);


 return val & ESB_WDT_ENABLE;
}
