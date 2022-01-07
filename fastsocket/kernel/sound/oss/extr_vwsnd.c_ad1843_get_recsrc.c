
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int ASSERT (int ) ;
 int SOUND_MASK_CD ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_PCM ;
 int ad1843_LSS ;
 int ad1843_read_bits (int *,int *) ;

__attribute__((used)) static int ad1843_get_recsrc(lithium_t *lith)
{
 int ls = ad1843_read_bits(lith, &ad1843_LSS);

 switch (ls) {
 case 1:
  return SOUND_MASK_MIC;
 case 2:
  return SOUND_MASK_LINE;
 case 3:
  return SOUND_MASK_CD;
 case 6:
  return SOUND_MASK_PCM;
 default:
  ASSERT(0);
  return -1;
 }
}
