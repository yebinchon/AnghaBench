
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref_clk; } ;


 TYPE_1__* plls ;

__attribute__((used)) static int calc_vclock3(int index, int m, int n, int p)
{
 if (p == 0 || n == 0)
  return 0;
 return plls[index].ref_clk * m / n / p;
}
