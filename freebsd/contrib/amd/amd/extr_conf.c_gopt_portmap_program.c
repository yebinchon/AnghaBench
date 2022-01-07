
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ portmap_program; } ;


 scalar_t__ AMQ_PROGRAM ;
 scalar_t__ atol (char const*) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ gopt ;
 int set_amd_program_number (scalar_t__) ;
 int stderr ;

__attribute__((used)) static int
gopt_portmap_program(const char *val)
{
  gopt.portmap_program = atol(val);




  if (gopt.portmap_program < AMQ_PROGRAM ||
      gopt.portmap_program > AMQ_PROGRAM + 10) {
    gopt.portmap_program = AMQ_PROGRAM;
    set_amd_program_number(gopt.portmap_program);
    fprintf(stderr, "conf: illegal amd program number \"%s\"\n", val);
    return 1;
  }

  set_amd_program_number(gopt.portmap_program);
  return 0;
}
