
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CCCA_INTERPROM_0 ;
 unsigned int CCCA_INTERPROM_1 ;
 unsigned int CCCA_INTERPROM_2 ;
 unsigned int CCCA_INTERPROM_3 ;
 unsigned int CCCA_INTERPROM_4 ;
 unsigned int CCCA_INTERPROM_5 ;
 unsigned int CCCA_INTERPROM_6 ;
 unsigned int PITCH_48000 ;
 unsigned int PITCH_57081 ;
 unsigned int PITCH_67882 ;
 unsigned int PITCH_80726 ;
 unsigned int PITCH_85000 ;
 unsigned int PITCH_96000 ;

__attribute__((used)) static unsigned int emu10k1_select_interprom(unsigned int pitch_target)
{
 if (pitch_target == PITCH_48000)
  return CCCA_INTERPROM_0;
 else if (pitch_target < PITCH_48000)
  return CCCA_INTERPROM_1;
 else if (pitch_target >= PITCH_96000)
  return CCCA_INTERPROM_0;
 else if (pitch_target >= PITCH_85000)
  return CCCA_INTERPROM_6;
 else if (pitch_target >= PITCH_80726)
  return CCCA_INTERPROM_5;
 else if (pitch_target >= PITCH_67882)
  return CCCA_INTERPROM_4;
 else if (pitch_target >= PITCH_57081)
  return CCCA_INTERPROM_3;
 else
  return CCCA_INTERPROM_2;
}
