
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct using_direct {struct using_direct* outer; struct using_direct* inner; struct using_direct* next; } ;
struct obstack {int dummy; } ;


 void* obsavestring (struct using_direct*,int ,struct obstack*) ;
 struct using_direct* obstack_alloc (struct obstack*,int) ;
 int strlen (struct using_direct*) ;
 int xfree (struct using_direct*) ;

__attribute__((used)) static struct using_direct *
cp_copy_usings (struct using_direct *using,
  struct obstack *obstack)
{
  if (using == ((void*)0))
    {
      return ((void*)0);
    }
  else
    {
      struct using_direct *retval
 = obstack_alloc (obstack, sizeof (struct using_direct));
      retval->inner = obsavestring (using->inner, strlen (using->inner),
        obstack);
      retval->outer = obsavestring (using->outer, strlen (using->outer),
        obstack);
      retval->next = cp_copy_usings (using->next, obstack);

      xfree (using->inner);
      xfree (using->outer);
      xfree (using);

      return retval;
    }
}
