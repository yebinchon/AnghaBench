
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; int lo; } ;
typedef TYPE_1__ INTERVAL ;


 int printf (char*) ;

int
dcheck(INTERVAL v)
{
    if (v.hi >= 0. && v.lo <= 0.)
    {
 printf("divisor  interval  contains  0.\n");
 return (1);
    }
    return (0);
}
