
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * single; int ** array; } ;
struct TYPE_5__ {scalar_t__ encoding; scalar_t__ from_array; scalar_t__ mixed_encoding; scalar_t__ sorted; } ;
struct TYPE_6__ {TYPE_2__ b; } ;
struct object {void* pc_begin; TYPE_1__ u; TYPE_3__ s; } ;
typedef int fde ;


 scalar_t__ DW_EH_PE_absptr ;
 int const* binary_search_mixed_encoding_fdes (struct object*,void*) ;
 int const* binary_search_single_encoding_fdes (struct object*,void*) ;
 int const* binary_search_unencoded_fdes (struct object*,void*) ;
 int init_object (struct object*) ;
 int const* linear_search_fdes (struct object*,int *,void*) ;

__attribute__((used)) static const fde *
search_object (struct object* ob, void *pc)
{


  if (! ob->s.b.sorted)
    {
      init_object (ob);




      if (pc < ob->pc_begin)
 return ((void*)0);
    }

  if (ob->s.b.sorted)
    {
      if (ob->s.b.mixed_encoding)
 return binary_search_mixed_encoding_fdes (ob, pc);
      else if (ob->s.b.encoding == DW_EH_PE_absptr)
 return binary_search_unencoded_fdes (ob, pc);
      else
 return binary_search_single_encoding_fdes (ob, pc);
    }
  else
    {

      if (ob->s.b.from_array)
 {
   fde **p;
   for (p = ob->u.array; *p ; p++)
     {
       const fde *f = linear_search_fdes (ob, *p, pc);
       if (f)
  return f;
     }
   return ((void*)0);
 }
      else
 return linear_search_fdes (ob, ob->u.single, pc);
    }
}
