
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ addr; int cmds; scalar_t__ rp; scalar_t__ wp; int * buf; } ;
struct TYPE_5__ {scalar_t__ area; scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ addr; int * buf; } ;
struct azx {int driver_caps; int reg_lock; TYPE_3__ rirb; TYPE_2__ rb; TYPE_1__ corb; } ;


 int AZX_DCAPS_CTX_WORKAROUND ;
 int CORBCTL ;
 int CORBLBASE ;
 int CORBRP ;
 int CORBSIZE ;
 int CORBUBASE ;
 int CORBWP ;
 int ICH6_CORBCTL_RUN ;
 int ICH6_CORBRP_RST ;
 int ICH6_RBCTL_DMA_EN ;
 int ICH6_RBCTL_IRQ_EN ;
 int ICH6_RIRBWP_RST ;
 int RINTCNT ;
 int RIRBCTL ;
 int RIRBLBASE ;
 int RIRBSIZE ;
 int RIRBUBASE ;
 int RIRBWP ;
 int azx_writeb (struct azx*,int ,int) ;
 int azx_writel (struct azx*,int ,int ) ;
 int azx_writew (struct azx*,int ,int) ;
 int memset (int ,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void azx_init_cmd_io(struct azx *chip)
{
 spin_lock_irq(&chip->reg_lock);

 chip->corb.addr = chip->rb.addr;
 chip->corb.buf = (u32 *)chip->rb.area;
 azx_writel(chip, CORBLBASE, (u32)chip->corb.addr);
 azx_writel(chip, CORBUBASE, upper_32_bits(chip->corb.addr));


 azx_writeb(chip, CORBSIZE, 0x02);

 azx_writew(chip, CORBWP, 0);

 azx_writew(chip, CORBRP, ICH6_CORBRP_RST);

 azx_writeb(chip, CORBCTL, ICH6_CORBCTL_RUN);


 chip->rirb.addr = chip->rb.addr + 2048;
 chip->rirb.buf = (u32 *)(chip->rb.area + 2048);
 chip->rirb.wp = chip->rirb.rp = 0;
 memset(chip->rirb.cmds, 0, sizeof(chip->rirb.cmds));
 azx_writel(chip, RIRBLBASE, (u32)chip->rirb.addr);
 azx_writel(chip, RIRBUBASE, upper_32_bits(chip->rirb.addr));


 azx_writeb(chip, RIRBSIZE, 0x02);

 azx_writew(chip, RIRBWP, ICH6_RIRBWP_RST);

 if (chip->driver_caps & AZX_DCAPS_CTX_WORKAROUND)
  azx_writew(chip, RINTCNT, 0xc0);
 else
  azx_writew(chip, RINTCNT, 1);

 azx_writeb(chip, RIRBCTL, ICH6_RBCTL_DMA_EN | ICH6_RBCTL_IRQ_EN);
 spin_unlock_irq(&chip->reg_lock);
}
