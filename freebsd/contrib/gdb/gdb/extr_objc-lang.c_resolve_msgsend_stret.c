
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ OBJC_FETCH_POINTER_ARGUMENT (int) ;
 scalar_t__ find_implementation (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
resolve_msgsend_stret (CORE_ADDR pc, CORE_ADDR *new_pc)
{
  CORE_ADDR object;
  CORE_ADDR sel;
  CORE_ADDR res;

  object = OBJC_FETCH_POINTER_ARGUMENT (1);
  sel = OBJC_FETCH_POINTER_ARGUMENT (2);

  res = find_implementation (object, sel);
  if (new_pc != 0)
    *new_pc = res;
  if (res == 0)
    return 1;
  return 0;
}
