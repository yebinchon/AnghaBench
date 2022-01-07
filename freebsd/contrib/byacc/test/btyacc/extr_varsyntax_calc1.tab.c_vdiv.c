
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double hi; double lo; } ;
typedef TYPE_1__ INTERVAL ;


 TYPE_1__ hilo (double,double,double,double) ;

INTERVAL
vdiv(double a, double b, INTERVAL v)
{
    return (hilo(a / v.hi, a / v.lo, b / v.hi, b / v.lo));
}
