
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t count; int sorted; scalar_t__ from_array; } ;
struct TYPE_8__ {TYPE_3__ b; } ;
struct TYPE_5__ {TYPE_2__* sort; int * single; int ** array; } ;
struct object {TYPE_4__ s; TYPE_1__ u; } ;
struct fde_accumulator {TYPE_2__* linear; } ;
typedef int fde ;
struct TYPE_6__ {int * orig_data; } ;


 int add_fdes (struct object*,struct fde_accumulator*,int *) ;
 size_t classify_object_over_fdes (struct object*,int *) ;
 int end_fde_sort (struct object*,struct fde_accumulator*,size_t) ;
 int start_fde_sort (struct fde_accumulator*,size_t) ;

__attribute__((used)) static inline void
init_object (struct object* ob)
{
  struct fde_accumulator accu;
  size_t count;

  count = ob->s.b.count;
  if (count == 0)
    {
      if (ob->s.b.from_array)
 {
   fde **p = ob->u.array;
   for (count = 0; *p; ++p)
     count += classify_object_over_fdes (ob, *p);
 }
      else
 count = classify_object_over_fdes (ob, ob->u.single);






      ob->s.b.count = count;
      if (ob->s.b.count != count)
 ob->s.b.count = 0;
    }

  if (!start_fde_sort (&accu, count))
    return;

  if (ob->s.b.from_array)
    {
      fde **p;
      for (p = ob->u.array; *p; ++p)
 add_fdes (ob, &accu, *p);
    }
  else
    add_fdes (ob, &accu, ob->u.single);

  end_fde_sort (ob, &accu, count);



  accu.linear->orig_data = ob->u.single;
  ob->u.sort = accu.linear;

  ob->s.b.sorted = 1;
}
