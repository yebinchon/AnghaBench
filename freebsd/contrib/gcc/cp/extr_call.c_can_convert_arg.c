
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int bad_p; } ;
typedef TYPE_1__ conversion ;


 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 TYPE_1__* implicit_conversion (int ,int ,int ,int,int) ;
 int obstack_free (int *,void*) ;

bool
can_convert_arg (tree to, tree from, tree arg, int flags)
{
  conversion *t;
  void *p;
  bool ok_p;


  p = conversion_obstack_alloc (0);

  t = implicit_conversion (to, from, arg, 0,
       flags);
  ok_p = (t && !t->bad_p);


  obstack_free (&conversion_obstack, p);

  return ok_p;
}
