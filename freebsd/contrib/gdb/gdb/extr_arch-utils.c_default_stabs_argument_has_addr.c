
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ DEPRECATED_REG_STRUCT_HAS_ADDR (int ,struct type*) ;
 scalar_t__ DEPRECATED_REG_STRUCT_HAS_ADDR_P () ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_BITSTRING ;
 scalar_t__ TYPE_CODE_SET ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int processing_gcc_compilation ;

int
default_stabs_argument_has_addr (struct gdbarch *gdbarch, struct type *type)
{
  if (DEPRECATED_REG_STRUCT_HAS_ADDR_P ()
      && DEPRECATED_REG_STRUCT_HAS_ADDR (processing_gcc_compilation, type))
    {
      CHECK_TYPEDEF (type);

      return (TYPE_CODE (type) == TYPE_CODE_STRUCT
       || TYPE_CODE (type) == TYPE_CODE_UNION
       || TYPE_CODE (type) == TYPE_CODE_SET
       || TYPE_CODE (type) == TYPE_CODE_BITSTRING);
    }

  return 0;
}
