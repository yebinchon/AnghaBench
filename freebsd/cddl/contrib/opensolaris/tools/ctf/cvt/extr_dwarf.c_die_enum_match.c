
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * t_emem; } ;
typedef TYPE_1__ tdesc_t ;



__attribute__((used)) static int
die_enum_match(void *arg1, void *arg2)
{
 tdesc_t *tdp = arg1, **fullp = arg2;

 if (tdp->t_emem != ((void*)0)) {
  *fullp = tdp;
  return (-1);
 }

 return (0);
}
