
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int arm_ccfsm_state ;
 int * arm_target_insn ;
 scalar_t__ arm_target_label ;
 int default_internal_label (int *,char const*,unsigned long) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
arm_internal_label (FILE *stream, const char *prefix, unsigned long labelno)
{
  if (arm_ccfsm_state == 3 && (unsigned) arm_target_label == labelno
      && !strcmp (prefix, "L"))
    {
      arm_ccfsm_state = 0;
      arm_target_insn = ((void*)0);
    }
  default_internal_label (stream, prefix, labelno);
}
