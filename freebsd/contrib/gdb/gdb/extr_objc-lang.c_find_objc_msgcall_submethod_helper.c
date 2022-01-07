
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objc_submethod_helper_data {scalar_t__ (* f ) (int ,int ) ;int new_pc; int pc; } ;


 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static int
find_objc_msgcall_submethod_helper (void * arg)
{
  struct objc_submethod_helper_data *s =
    (struct objc_submethod_helper_data *) arg;

  if (s->f (s->pc, s->new_pc) == 0)
    return 1;
  else
    return 0;
}
