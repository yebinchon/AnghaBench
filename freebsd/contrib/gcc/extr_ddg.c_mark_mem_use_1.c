
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int for_each_rtx (int *,int ,void*) ;
 int mark_mem_use ;

__attribute__((used)) static void
mark_mem_use_1 (rtx *x, void *data)
{
  for_each_rtx (x, mark_mem_use, data);
}
