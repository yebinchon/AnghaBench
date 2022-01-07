
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int COERCE_REF (struct value*) ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 struct value* ada_to_fixed_value (int ,int ,scalar_t__,struct value*) ;
 struct value* unwrap_value (struct value*) ;

__attribute__((used)) static struct value *
ada_coerce_ref (struct value *val0)
{
  if (TYPE_CODE (VALUE_TYPE (val0)) == TYPE_CODE_REF)
    {
      struct value *val = val0;
      COERCE_REF (val);
      val = unwrap_value (val);
      return ada_to_fixed_value (VALUE_TYPE (val), 0,
     VALUE_ADDRESS (val) + VALUE_OFFSET (val),
     val);
    }
  else
    return val0;
}
