
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROCESSOR_HYPERSPARC ;
 int PROCESSOR_NIAGARA ;
 int PROCESSOR_SPARCLITE86X ;
 int PROCESSOR_SUPERSPARC ;
 int PROCESSOR_ULTRASPARC ;
 int PROCESSOR_ULTRASPARC3 ;
 int sparc_cpu ;

__attribute__((used)) static int
sparc_use_sched_lookahead (void)
{
  if (sparc_cpu == PROCESSOR_NIAGARA)
    return 0;
  if (sparc_cpu == PROCESSOR_ULTRASPARC
      || sparc_cpu == PROCESSOR_ULTRASPARC3)
    return 4;
  if ((1 << sparc_cpu) &
      ((1 << PROCESSOR_SUPERSPARC) | (1 << PROCESSOR_HYPERSPARC) |
       (1 << PROCESSOR_SPARCLITE86X)))
    return 3;
  return 0;
}
