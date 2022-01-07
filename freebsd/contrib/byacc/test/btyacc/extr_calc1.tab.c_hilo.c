
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double hi; double lo; } ;
typedef TYPE_1__ INTERVAL ;



__attribute__((used)) static INTERVAL
hilo(double a, double b, double c, double d)
{


    INTERVAL v;

    if (a > b)
    {
 v.hi = a;
 v.lo = b;
    }
    else
    {
 v.hi = b;
 v.lo = a;
    }

    if (c > d)
    {
 if (c > v.hi)
     v.hi = c;
 if (d < v.lo)
     v.lo = d;
    }
    else
    {
 if (d > v.hi)
     v.hi = d;
 if (c < v.lo)
     v.lo = c;
    }
    return (v);
}
