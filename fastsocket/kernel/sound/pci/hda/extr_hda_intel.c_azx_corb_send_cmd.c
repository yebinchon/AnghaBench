
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hda_bus {struct azx* private_data; } ;
struct TYPE_4__ {int * buf; } ;
struct TYPE_3__ {int * cmds; } ;
struct azx {int reg_lock; TYPE_2__ corb; TYPE_1__ rirb; } ;


 int CORBRP ;
 int CORBWP ;
 int EAGAIN ;
 int EIO ;
 unsigned int ICH6_MAX_CORB_ENTRIES ;
 unsigned int azx_command_addr (int ) ;
 unsigned int azx_readw (struct azx*,int ) ;
 int azx_writel (struct azx*,int ,unsigned int) ;
 int cpu_to_le32 (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int azx_corb_send_cmd(struct hda_bus *bus, u32 val)
{
 struct azx *chip = bus->private_data;
 unsigned int addr = azx_command_addr(val);
 unsigned int wp, rp;

 spin_lock_irq(&chip->reg_lock);


 wp = azx_readw(chip, CORBWP);
 if (wp == 0xffff) {

  spin_unlock_irq(&chip->reg_lock);
  return -EIO;
 }
 wp++;
 wp %= ICH6_MAX_CORB_ENTRIES;

 rp = azx_readw(chip, CORBRP);
 if (wp == rp) {

  spin_unlock_irq(&chip->reg_lock);
  return -EAGAIN;
 }

 chip->rirb.cmds[addr]++;
 chip->corb.buf[wp] = cpu_to_le32(val);
 azx_writel(chip, CORBWP, wp);

 spin_unlock_irq(&chip->reg_lock);

 return 0;
}
