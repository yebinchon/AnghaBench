
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ contains_variant_part (struct type*) ;
 struct type* dynamic_template_type (struct type*) ;
 struct type* template_to_fixed_record_type (struct type*,char*,int ,struct value*) ;
 struct type* to_record_with_fixed_variant_part (struct type*,char*,int ,struct value*) ;

__attribute__((used)) static struct type *
to_fixed_record_type (struct type *type0, char *valaddr, CORE_ADDR address,
        struct value *dval)
{
  struct type *templ_type;





  templ_type = dynamic_template_type (type0);

  if (templ_type != ((void*)0))
    return template_to_fixed_record_type (templ_type, valaddr, address, dval);
  else if (contains_variant_part (type0))
    return to_record_with_fixed_variant_part (type0, valaddr, address, dval);
  else
    {


      return type0;
    }

}
