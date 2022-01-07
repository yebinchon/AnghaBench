
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct snd_pcsp {int thalf; int val61; int playback_ptr; int fmt_size; scalar_t__ ns_rem; scalar_t__ enable; scalar_t__ is_signed; struct snd_pcm_substream* playback_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned char* dma_area; } ;


 unsigned char CUR_DIV () ;
 scalar_t__ PCSP_CALC_NS (unsigned char) ;
 scalar_t__ PCSP_PERIOD_NS () ;
 int i8253_lock ;
 int nforce_wa ;
 int outb (int,int) ;
 int outb_p (unsigned char,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64 pcsp_timer_update(struct snd_pcsp *chip)
{
 unsigned char timer_cnt, val;
 u64 ns;
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;
 unsigned long flags;

 if (chip->thalf) {
  outb(chip->val61, 0x61);
  chip->thalf = 0;
  return chip->ns_rem;
 }

 substream = chip->playback_substream;
 if (!substream)
  return 0;

 runtime = substream->runtime;

 val = runtime->dma_area[chip->playback_ptr + chip->fmt_size - 1];
 if (chip->is_signed)
  val ^= 0x80;
 timer_cnt = val * CUR_DIV() / 256;

 if (timer_cnt && chip->enable) {
  spin_lock_irqsave(&i8253_lock, flags);
  if (!nforce_wa) {
   outb_p(chip->val61, 0x61);
   outb_p(timer_cnt, 0x42);
   outb(chip->val61 ^ 1, 0x61);
  } else {
   outb(chip->val61 ^ 2, 0x61);
   chip->thalf = 1;
  }
  spin_unlock_irqrestore(&i8253_lock, flags);
 }

 chip->ns_rem = PCSP_PERIOD_NS();
 ns = (chip->thalf ? PCSP_CALC_NS(timer_cnt) : chip->ns_rem);
 chip->ns_rem -= ns;
 return ns;
}
