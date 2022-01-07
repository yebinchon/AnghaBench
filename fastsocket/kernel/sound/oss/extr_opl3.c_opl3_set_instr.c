
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_voice; int * i_map; int ** act_i; } ;


 int SBFM_MAXINSTR ;
 TYPE_1__* devc ;

__attribute__((used)) static int opl3_set_instr (int dev, int voice, int instr_no)
{
 if (voice < 0 || voice >= devc->nr_voice)
  return 0;
 if (instr_no < 0 || instr_no >= SBFM_MAXINSTR)
  instr_no = 0;

 devc->act_i[voice] = &devc->i_map[instr_no];
 return 0;
}
