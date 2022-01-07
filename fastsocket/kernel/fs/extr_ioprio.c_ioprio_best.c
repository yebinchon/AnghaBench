
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short IOPRIO_CLASS_BE ;
 unsigned short IOPRIO_CLASS_NONE ;
 unsigned short IOPRIO_PRIO_CLASS (unsigned short) ;
 int min (unsigned short,unsigned short) ;

int ioprio_best(unsigned short aprio, unsigned short bprio)
{
 unsigned short aclass = IOPRIO_PRIO_CLASS(aprio);
 unsigned short bclass = IOPRIO_PRIO_CLASS(bprio);

 if (aclass == IOPRIO_CLASS_NONE)
  aclass = IOPRIO_CLASS_BE;
 if (bclass == IOPRIO_CLASS_NONE)
  bclass = IOPRIO_CLASS_BE;

 if (aclass == bclass)
  return min(aprio, bprio);
 if (aclass > bclass)
  return bprio;
 else
  return aprio;
}
