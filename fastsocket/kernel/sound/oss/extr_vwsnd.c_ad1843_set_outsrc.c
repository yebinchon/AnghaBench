
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int EINVAL ;
 int SOUND_MASK_CD ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_PCM ;
 int ad1843_LDA1GM ;
 int ad1843_LMCMM ;
 int ad1843_LX1MM ;
 int ad1843_LX2MM ;
 int ad1843_RDA1GM ;
 int ad1843_RMCMM ;
 int ad1843_RX1MM ;
 int ad1843_RX2MM ;
 int ad1843_write_multi (int *,int,int *,int,int *,int) ;

__attribute__((used)) static int ad1843_set_outsrc(lithium_t *lith, int mask)
{
 int pcm, line, mic, cd;

 if (mask & ~(SOUND_MASK_PCM | SOUND_MASK_LINE |
       SOUND_MASK_CD | SOUND_MASK_MIC))
  return -EINVAL;
 pcm = (mask & SOUND_MASK_PCM) ? 0 : 1;
 line = (mask & SOUND_MASK_LINE) ? 0 : 1;
 mic = (mask & SOUND_MASK_MIC) ? 0 : 1;
 cd = (mask & SOUND_MASK_CD) ? 0 : 1;

 ad1843_write_multi(lith, 2, &ad1843_LDA1GM, pcm, &ad1843_RDA1GM, pcm);
 ad1843_write_multi(lith, 2, &ad1843_LX1MM, line, &ad1843_RX1MM, line);
 ad1843_write_multi(lith, 2, &ad1843_LX2MM, cd, &ad1843_RX2MM, cd);
 ad1843_write_multi(lith, 2, &ad1843_LMCMM, mic, &ad1843_RMCMM, mic);

 return mask;
}
