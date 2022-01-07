
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int SOUND_MASK_CD ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_PCM ;
 int ad1843_LDA1GM ;
 int ad1843_LMCMM ;
 int ad1843_LX1MM ;
 int ad1843_LX2MM ;
 scalar_t__ ad1843_read_bits (int *,int *) ;

__attribute__((used)) static int ad1843_get_outsrc(lithium_t *lith)
{
 int pcm, line, mic, cd;

 pcm = ad1843_read_bits(lith, &ad1843_LDA1GM) ? 0 : SOUND_MASK_PCM;
 line = ad1843_read_bits(lith, &ad1843_LX1MM) ? 0 : SOUND_MASK_LINE;
 cd = ad1843_read_bits(lith, &ad1843_LX2MM) ? 0 : SOUND_MASK_CD;
 mic = ad1843_read_bits(lith, &ad1843_LMCMM) ? 0 : SOUND_MASK_MIC;

 return pcm | line | cd | mic;
}
