
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
typedef enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;


 int RETURN_VALUE_REGISTER_CONVENTION ;
 int RETURN_VALUE_STRUCT_CONVENTION ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 int TYPE_FIELD_TYPE (struct type*,int ) ;
 int TYPE_NFIELDS (struct type*) ;
 struct type* check_typedef (int ) ;
 int i386_extract_return_value (struct gdbarch*,struct type*,struct regcache*,void*) ;
 int i386_reg_struct_return_p (struct gdbarch*,struct type*) ;
 int i386_store_return_value (struct gdbarch*,struct type*,struct regcache*,void const*) ;

__attribute__((used)) static enum return_value_convention
i386_return_value (struct gdbarch *gdbarch, struct type *type,
     struct regcache *regcache, void *readbuf,
     const void *writebuf)
{
  enum type_code code = TYPE_CODE (type);

  if ((code == TYPE_CODE_STRUCT || code == TYPE_CODE_UNION)
      && !i386_reg_struct_return_p (gdbarch, type))
    return RETURN_VALUE_STRUCT_CONVENTION;







  if (code == TYPE_CODE_STRUCT && TYPE_NFIELDS (type) == 1)
    {
      type = check_typedef (TYPE_FIELD_TYPE (type, 0));
      return i386_return_value (gdbarch, type, regcache, readbuf, writebuf);
    }

  if (readbuf)
    i386_extract_return_value (gdbarch, type, regcache, readbuf);
  if (writebuf)
    i386_store_return_value (gdbarch, type, regcache, writebuf);

  return RETURN_VALUE_REGISTER_CONVENTION;
}
