
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shift; } ;
struct meta_value {TYPE_1__ hdr; } ;
struct meta_obj {int len; } ;



__attribute__((used)) static void meta_var_apply_extras(struct meta_value *v,
      struct meta_obj *dst)
{
 int shift = v->hdr.shift;

 if (shift && shift < dst->len)
  dst->len -= shift;
}
