
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shift; } ;
struct meta_value {int val; TYPE_1__ hdr; } ;
struct meta_obj {int value; } ;



__attribute__((used)) static void meta_int_apply_extras(struct meta_value *v,
      struct meta_obj *dst)
{
 if (v->hdr.shift)
  dst->value >>= v->hdr.shift;

 if (v->val)
  dst->value &= v->val;
}
