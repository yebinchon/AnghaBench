
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funcall {struct funcall* next; } ;


 struct funcall* funcall_chain ;
 int xfree (struct funcall*) ;

__attribute__((used)) static void
free_funcalls (void *ignore)
{
  struct funcall *call, *next;

  for (call = funcall_chain; call; call = next)
    {
      next = call->next;
      xfree (call);
    }
}
