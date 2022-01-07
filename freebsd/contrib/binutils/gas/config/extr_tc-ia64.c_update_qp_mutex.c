
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_4__ {scalar_t__ path; scalar_t__ debug_dv; } ;
struct TYPE_3__ {int prmask; scalar_t__ path; } ;


 int add_qp_mutex (int) ;
 int fprintf (int ,char*) ;
 TYPE_2__ md ;
 int print_prmask (int) ;
 TYPE_1__* qp_mutexes ;
 int qp_mutexeslen ;
 int stderr ;

__attribute__((used)) static int
update_qp_mutex (valueT mask)
{
  int i;
  int add = 0;

  i = 0;
  while (i < qp_mutexeslen)
    {
      if ((qp_mutexes[i].prmask & mask) != 0)
 {

   if (qp_mutexes[i].prmask == mask
       && qp_mutexes[i].path == md.path)
     {
       i++;
       add = -1;
     }
   else
     {
       int keep = 0;

       if (md.debug_dv)
  {
    fprintf (stderr, "  Clearing mutex relation");
    print_prmask (qp_mutexes[i].prmask);
    fprintf (stderr, "\n");
  }






       if (qp_mutexes[i].path == md.path)
  {


    if (add == 0
        && (qp_mutexes[i].prmask & mask) == mask)
      add = 1;

    qp_mutexes[i].prmask &= ~mask;
    if (qp_mutexes[i].prmask & (qp_mutexes[i].prmask - 1))
      {


        keep = 1;
        i++;
      }
  }

       if (keep == 0)

  qp_mutexes[i] = qp_mutexes[--qp_mutexeslen];
     }
 }
      else
 ++i;
    }

  if (add == 1)
    add_qp_mutex (mask);

  return add;
}
