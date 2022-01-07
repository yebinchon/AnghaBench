
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objc_submethod_helper_data {int (* f ) (int ,int *) ;int * new_pc; int pc; } ;
typedef int CORE_ADDR ;


 int RETURN_MASK_ALL ;
 scalar_t__ catch_errors (int ,void*,char*,int ) ;
 int find_objc_msgcall_submethod_helper ;

__attribute__((used)) static int
find_objc_msgcall_submethod (int (*f) (CORE_ADDR, CORE_ADDR *),
        CORE_ADDR pc,
        CORE_ADDR *new_pc)
{
  struct objc_submethod_helper_data s;

  s.f = f;
  s.pc = pc;
  s.new_pc = new_pc;

  if (catch_errors (find_objc_msgcall_submethod_helper,
      (void *) &s,
      "Unable to determine target of Objective-C method call (ignoring):\n",
      RETURN_MASK_ALL) == 0)
    return 1;
  else
    return 0;
}
