
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nm256 {int coeffs_current; scalar_t__ all_coeff_buf; int use_cache; } ;


 scalar_t__ NM_COEFF_START_OFFSET ;
 scalar_t__ NM_PLAYBACK_ENABLE_REG ;
 scalar_t__ NM_PLAYBACK_REG_OFFSET ;
 scalar_t__ NM_RECORD_ENABLE_REG ;
 scalar_t__ NM_RECORD_REG_OFFSET ;
 int NM_TOTAL_COEFF_COUNT ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__* coefficient_sizes ;
 int coefficients ;
 scalar_t__ snd_nm256_get_start_offset (int) ;
 int snd_nm256_load_one_coefficient (struct nm256*,int,scalar_t__,int) ;
 int snd_nm256_readb (struct nm256*,scalar_t__) ;
 int snd_nm256_write_buffer (struct nm256*,int ,scalar_t__,int) ;
 int snd_nm256_writel (struct nm256*,scalar_t__,scalar_t__) ;
 int snd_printd (char*) ;

__attribute__((used)) static void
snd_nm256_load_coefficient(struct nm256 *chip, int stream, int number)
{

 u32 poffset = (stream == SNDRV_PCM_STREAM_CAPTURE ?
         NM_RECORD_ENABLE_REG : NM_PLAYBACK_ENABLE_REG);
 u32 addr = NM_COEFF_START_OFFSET;

 addr += (stream == SNDRV_PCM_STREAM_CAPTURE ?
   NM_RECORD_REG_OFFSET : NM_PLAYBACK_REG_OFFSET);

 if (snd_nm256_readb(chip, poffset) & 1) {
  snd_printd("NM256: Engine was enabled while loading coefficients!\n");
  return;
 }


 number &= 7;
 if (stream == SNDRV_PCM_STREAM_CAPTURE)
  number += 8;

 if (! chip->use_cache) {
  snd_nm256_load_one_coefficient(chip, stream, addr, number);
  return;
 }
 if (! chip->coeffs_current) {
  snd_nm256_write_buffer(chip, coefficients, chip->all_coeff_buf,
           NM_TOTAL_COEFF_COUNT * 4);
  chip->coeffs_current = 1;
 } else {
  u32 base = chip->all_coeff_buf;
  u32 offset = snd_nm256_get_start_offset(number);
  u32 end_offset = offset + coefficient_sizes[number];
  snd_nm256_writel(chip, addr, base + offset);
  if (stream == SNDRV_PCM_STREAM_PLAYBACK)
   end_offset--;
  snd_nm256_writel(chip, addr + 4, base + end_offset);
 }
}
