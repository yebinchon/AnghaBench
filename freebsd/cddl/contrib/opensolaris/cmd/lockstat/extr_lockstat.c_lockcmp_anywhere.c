
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ls_event; scalar_t__ ls_lock; } ;
typedef TYPE_1__ lsrec_t ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
lockcmp_anywhere(lsrec_t *a, lsrec_t *b)
{
 if (a->ls_event < b->ls_event)
  return (-1);
 if (a->ls_event > b->ls_event)
  return (1);
 return (strcmp(a->ls_lock, b->ls_lock));

}
