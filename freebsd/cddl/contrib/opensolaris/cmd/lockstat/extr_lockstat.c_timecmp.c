
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ls_event; scalar_t__ ls_time; } ;
typedef TYPE_1__ lsrec_t ;



__attribute__((used)) static int
timecmp(lsrec_t *a, lsrec_t *b)
{
 if (a->ls_event < b->ls_event)
  return (-1);
 if (a->ls_event > b->ls_event)
  return (1);

 if (a->ls_time < b->ls_time)
  return (1);
 if (a->ls_time > b->ls_time)
  return (-1);

 return (0);
}
