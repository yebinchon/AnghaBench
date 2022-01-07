
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int hashval_t ;


 int GET_MODE (int ) ;
 int hash_rtx (int ,int ,int*,int *,int) ;

__attribute__((used)) static hashval_t
hash_expr (rtx x, int *do_not_record_p)
{
  *do_not_record_p = 0;
  return hash_rtx (x, GET_MODE (x), do_not_record_p,
     ((void*)0), 0);
}
