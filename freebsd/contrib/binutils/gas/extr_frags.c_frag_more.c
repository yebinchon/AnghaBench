
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frch_obstack; } ;


 int frag_alloc_check (int *) ;
 int frag_grow (int) ;
 TYPE_1__* frchain_now ;
 int obstack_blank_fast (int *,int) ;
 char* obstack_next_free (int *) ;

char *
frag_more (int nchars)
{
  register char *retval;

  frag_alloc_check (&frchain_now->frch_obstack);
  frag_grow (nchars);
  retval = obstack_next_free (&frchain_now->frch_obstack);
  obstack_blank_fast (&frchain_now->frch_obstack, nchars);
  return (retval);
}
