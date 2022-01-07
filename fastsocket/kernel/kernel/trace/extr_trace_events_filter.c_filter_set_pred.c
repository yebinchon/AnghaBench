
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_pred {int fn; scalar_t__ field_name; } ;
typedef int filter_pred_fn_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kstrdup (scalar_t__,int ) ;

__attribute__((used)) static int filter_set_pred(struct filter_pred *dest,
      struct filter_pred *src,
      filter_pred_fn_t fn)
{
 *dest = *src;
 if (src->field_name) {
  dest->field_name = kstrdup(src->field_name, GFP_KERNEL);
  if (!dest->field_name)
   return -ENOMEM;
 }
 dest->fn = fn;

 return 0;
}
