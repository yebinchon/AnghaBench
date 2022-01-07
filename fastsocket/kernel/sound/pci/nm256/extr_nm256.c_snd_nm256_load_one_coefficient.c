
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct nm256 {scalar_t__* coeff_buf; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__* coefficient_sizes ;
 scalar_t__ coefficients ;
 scalar_t__ snd_nm256_get_start_offset (int) ;
 int snd_nm256_write_buffer (struct nm256*,scalar_t__,scalar_t__,scalar_t__) ;
 int snd_nm256_writel (struct nm256*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
snd_nm256_load_one_coefficient(struct nm256 *chip, int stream, u32 port, int which)
{
 u32 coeff_buf = chip->coeff_buf[stream];
 u16 offset = snd_nm256_get_start_offset(which);
 u16 size = coefficient_sizes[which];

 snd_nm256_write_buffer(chip, coefficients + offset, coeff_buf, size);
 snd_nm256_writel(chip, port, coeff_buf);

 if (stream == SNDRV_PCM_STREAM_PLAYBACK)
  size--;
 snd_nm256_writel(chip, port + 4, coeff_buf + size);
}
