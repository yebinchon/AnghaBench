
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned short u16 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_als300_substream_data {scalar_t__ period_flipflop; int block_counter_register; } ;
struct snd_als300 {int reg_lock; int port; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {struct snd_als300_substream_data* private_data; } ;


 int bytes_to_frames (TYPE_1__*,unsigned short) ;
 int snd_als300_dbgcallenter () ;
 int snd_als300_dbgcallleave () ;
 int snd_als300_dbgplay (char*,unsigned short) ;
 scalar_t__ snd_als300_gcr_read (int ,int ) ;
 unsigned short snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_als300* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_als300_pointer(struct snd_pcm_substream *substream)
{
 u16 current_ptr;
 struct snd_als300 *chip = snd_pcm_substream_chip(substream);
 struct snd_als300_substream_data *data;
 unsigned short period_bytes;

 data = substream->runtime->private_data;
 period_bytes = snd_pcm_lib_period_bytes(substream);

 snd_als300_dbgcallenter();
 spin_lock(&chip->reg_lock);
 current_ptr = (u16) snd_als300_gcr_read(chip->port,
     data->block_counter_register) + 4;
 spin_unlock(&chip->reg_lock);
 if (current_ptr > period_bytes)
  current_ptr = 0;
 else
  current_ptr = period_bytes - current_ptr;

 if (data->period_flipflop == 0)
  current_ptr += period_bytes;
 snd_als300_dbgplay("Pointer (bytes): %d\n", current_ptr);
 snd_als300_dbgcallleave();
 return bytes_to_frames(substream->runtime, current_ptr);
}
