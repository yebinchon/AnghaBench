
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_data {int ** ptrs; } ;


 struct percpu_data* __percpu_disguise (void*) ;
 int kfree (int *) ;

__attribute__((used)) static void percpu_depopulate(void *__pdata, int cpu)
{
 struct percpu_data *pdata = __percpu_disguise(__pdata);

 kfree(pdata->ptrs[cpu]);
 pdata->ptrs[cpu] = ((void*)0);
}
