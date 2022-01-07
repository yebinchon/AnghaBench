
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int hashval_t ;


 int const_rtx_hash_1 ;
 int for_each_rtx (int *,int ,int *) ;

__attribute__((used)) static hashval_t
const_rtx_hash (rtx x)
{
  hashval_t h = 0;
  for_each_rtx (&x, const_rtx_hash_1, &h);
  return h;
}
