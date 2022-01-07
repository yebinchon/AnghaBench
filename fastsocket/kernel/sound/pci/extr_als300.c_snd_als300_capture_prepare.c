
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned short dma_addr; } ;
struct snd_als300 {int reg_lock; int port; } ;


 int RECORD_CONTROL ;
 int RECORD_END ;
 int RECORD_START ;
 int TRANSFER_START ;
 int snd_als300_dbgcallenter () ;
 int snd_als300_dbgcallleave () ;
 int snd_als300_dbgplay (char*,unsigned short,unsigned short) ;
 int snd_als300_gcr_read (int ,int ) ;
 int snd_als300_gcr_write (int ,int ,unsigned short) ;
 unsigned short snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned short snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_als300* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_als300_capture_prepare(struct snd_pcm_substream *substream)
{
 u32 tmp;
 struct snd_als300 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned short period_bytes = snd_pcm_lib_period_bytes(substream);
 unsigned short buffer_bytes = snd_pcm_lib_buffer_bytes(substream);

 snd_als300_dbgcallenter();
 spin_lock_irq(&chip->reg_lock);
 tmp = snd_als300_gcr_read(chip->port, RECORD_CONTROL);
 tmp &= ~TRANSFER_START;

 snd_als300_dbgplay("Period bytes: %d Buffer bytes %d\n", period_bytes,
       buffer_bytes);


 tmp &= 0xffff0000;
 tmp |= period_bytes - 1;


 snd_als300_gcr_write(chip->port, RECORD_CONTROL, tmp);
 snd_als300_gcr_write(chip->port, RECORD_START,
     runtime->dma_addr);
 snd_als300_gcr_write(chip->port, RECORD_END,
     runtime->dma_addr + buffer_bytes - 1);
 spin_unlock_irq(&chip->reg_lock);
 snd_als300_dbgcallleave();
 return 0;
}
