
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sum {int rsc; } ;


 int rsc_uninit (int *) ;

__attribute__((used)) static int sum_rsc_uninit(struct sum *sum)
{
 rsc_uninit(&sum->rsc);
 return 0;
}
