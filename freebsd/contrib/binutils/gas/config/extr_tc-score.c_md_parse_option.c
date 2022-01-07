
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC ;
 int SCORE5_PIPELINE ;
 int SCORE7_PIPELINE ;
 char* _ (char*) ;
 int atoi (char*) ;
 int fix_data_dependency ;
 int g_opt ;
 int g_switch_value ;
 int nor1 ;
 int printf (char*) ;
 int score7 ;
 int score_pic ;
 int target_big_endian ;
 int university_version ;
 int vector_size ;
 int warn_fix_data_dependency ;

int
md_parse_option (int c, char *arg)
{
  switch (c)
    {

    case 138:
      target_big_endian = 1;
      break;


    case 137:
      target_big_endian = 0;
      break;

    case 136:
      fix_data_dependency = 1;
      break;
    case 135:
      warn_fix_data_dependency = 0;
      break;
    case 131:
      score7 = 0;
      university_version = 0;
      vector_size = SCORE5_PIPELINE;
      break;
    case 130:
      score7 = 0;
      university_version = 1;
      vector_size = SCORE5_PIPELINE;
      break;
    case 129:
      score7 = 1;
      university_version = 0;
      vector_size = SCORE7_PIPELINE;
      break;
    case 132:
      nor1 = 0;
      break;
    case 'G':
      g_switch_value = atoi (arg);
      break;
    case 134:
      g_opt = 0;
      break;
    case 128:
      printf (_("Sunplus-v2-0-0-20060510\n"));
      break;
    case 133:
      score_pic = PIC;
      g_switch_value = 0;
      break;
    default:

      return 0;
    }
  return 1;
}
