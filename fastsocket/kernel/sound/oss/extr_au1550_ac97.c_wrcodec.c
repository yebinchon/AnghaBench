
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct au1550_state {int lock; } ;
struct ac97_codec {scalar_t__ private_data; } ;


 int POLL_COUNT ;
 int PSC_AC97CDC ;
 scalar_t__ PSC_AC97CDC_INDX (int ) ;
 int PSC_AC97EVNT ;
 int PSC_AC97EVNT_CD ;
 int PSC_AC97STAT ;
 int PSC_AC97STAT_CP ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int,int ) ;
 int err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
wrcodec(struct ac97_codec *codec, u8 addr, u16 data)
{
 struct au1550_state *s = (struct au1550_state *)codec->private_data;
 unsigned long flags;
 u32 cmd, val;
 int i;

 spin_lock_irqsave(&s->lock, flags);

 for (i = 0; i < POLL_COUNT; i++) {
  val = au_readl(PSC_AC97STAT);
  au_sync();
  if (!(val & PSC_AC97STAT_CP))
   break;
 }
 if (i == POLL_COUNT)
  err("wrcodec: codec cmd pending expired!");

 cmd = (u32)PSC_AC97CDC_INDX(addr);
 cmd |= (u32)data;
 au_writel(cmd, PSC_AC97CDC);
 au_sync();

 for (i = 0; i < POLL_COUNT; i++) {
  val = au_readl(PSC_AC97STAT);
  au_sync();
  if (!(val & PSC_AC97STAT_CP))
   break;
 }
 if (i == POLL_COUNT)
  err("wrcodec: codec cmd pending expired!");

 for (i = 0; i < POLL_COUNT; i++) {
  val = au_readl(PSC_AC97EVNT);
  au_sync();
  if (val & PSC_AC97EVNT_CD)
   break;
 }
 if (i == POLL_COUNT)
  err("wrcodec: read cmdwait expired!");



 au_writel(PSC_AC97EVNT_CD, PSC_AC97EVNT);
 au_sync();

 spin_unlock_irqrestore(&s->lock, flags);
}
