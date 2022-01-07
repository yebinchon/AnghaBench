
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int hash_rtx (int ,int,int*,int *,int) ;

__attribute__((used)) static unsigned int
hash_expr (rtx x, enum machine_mode mode, int *do_not_record_p,
    int hash_table_size)
{
  unsigned int hash;

  *do_not_record_p = 0;

  hash = hash_rtx (x, mode, do_not_record_p,
     ((void*)0), 0);
  return hash % hash_table_size;
}
