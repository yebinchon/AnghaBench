
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int encoding; } ;
struct TYPE_7__ {TYPE_1__ b; } ;
struct object {TYPE_2__ s; } ;
struct TYPE_8__ {int pc_begin; } ;
typedef TYPE_3__ fde ;
typedef scalar_t__ _Unwind_Ptr ;


 scalar_t__ base_from_object (int ,struct object*) ;
 int read_encoded_value_with_base (int ,scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static int
fde_single_encoding_compare (struct object *ob, const fde *x, const fde *y)
{
  _Unwind_Ptr base, x_ptr, y_ptr;

  base = base_from_object (ob->s.b.encoding, ob);
  read_encoded_value_with_base (ob->s.b.encoding, base, x->pc_begin, &x_ptr);
  read_encoded_value_with_base (ob->s.b.encoding, base, y->pc_begin, &y_ptr);

  if (x_ptr > y_ptr)
    return 1;
  if (x_ptr < y_ptr)
    return -1;
  return 0;
}
