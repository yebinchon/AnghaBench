
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int conversion ;


 int LOOKUP_NORMAL ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 int * implicit_conversion (int ,int ,int ,int,int ) ;
 int obstack_free (int *,void*) ;

bool
can_convert_arg_bad (tree to, tree from, tree arg)
{
  conversion *t;
  void *p;


  p = conversion_obstack_alloc (0);

  t = implicit_conversion (to, from, arg, 0,
       LOOKUP_NORMAL);

  obstack_free (&conversion_obstack, p);

  return t != ((void*)0);
}
