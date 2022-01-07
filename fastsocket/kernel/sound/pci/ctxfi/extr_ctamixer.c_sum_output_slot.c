
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc {int dummy; } ;


 int sum_index (struct rsc const*) ;

__attribute__((used)) static int sum_output_slot(const struct rsc *rsc)
{
 return (sum_index(rsc) << 4) + 0xc;
}
