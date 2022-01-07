
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MIXER_PORT_T { ____Placeholder_MIXER_PORT_T } MIXER_PORT_T ;
typedef enum CT_AMIXER_CTL { ____Placeholder_CT_AMIXER_CTL } CT_AMIXER_CTL ;


 int AMIXER_LINEIN ;
 int AMIXER_MASTER_F_C ;
 int AMIXER_MIC ;
 int AMIXER_PCM_C ;
 int AMIXER_PCM_F ;
 int AMIXER_PCM_R ;
 int AMIXER_PCM_S ;
 int AMIXER_SPDIFI ;
 int AMIXER_SPDIFO ;
 int AMIXER_WAVE_C ;
 int AMIXER_WAVE_F ;
 int AMIXER_WAVE_R ;
 int AMIXER_WAVE_S ;
__attribute__((used)) static enum CT_AMIXER_CTL port_to_amixer(enum MIXER_PORT_T type)
{
 switch (type) {
 case 130: return AMIXER_WAVE_F;
 case 128: return AMIXER_WAVE_S;
 case 131: return AMIXER_WAVE_C;
 case 129: return AMIXER_WAVE_R;
 case 134: return AMIXER_MASTER_F_C;
 case 132: return AMIXER_SPDIFO;
 case 140: return AMIXER_LINEIN;
 case 139: return AMIXER_MIC;
 case 133: return AMIXER_SPDIFI;
 case 137: return AMIXER_PCM_F;
 case 135: return AMIXER_PCM_S;
 case 138: return AMIXER_PCM_C;
 case 136: return AMIXER_PCM_R;
 default: return 0;
 }
}
