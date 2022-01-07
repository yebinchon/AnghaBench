
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int do_not_record ;
 int hash_arg_in_memory ;
 int hash_rtx (int ,int,int *,int *,int) ;

__attribute__((used)) static inline unsigned
canon_hash (rtx x, enum machine_mode mode)
{
  return hash_rtx (x, mode, &do_not_record, &hash_arg_in_memory, 1);
}
