
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int find_btr_reference ;
 int for_each_rtx (int *,int ,int *) ;

__attribute__((used)) static int
btr_referenced_p (rtx x, rtx *excludep)
{
  return for_each_rtx (&x, find_btr_reference, excludep);
}
