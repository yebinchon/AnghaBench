
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int hash_rtx (int ,int,int*,int *,int) ;

__attribute__((used)) static inline unsigned
safe_hash (rtx x, enum machine_mode mode)
{
  int dummy_do_not_record;
  return hash_rtx (x, mode, &dummy_do_not_record, ((void*)0), 1);
}
