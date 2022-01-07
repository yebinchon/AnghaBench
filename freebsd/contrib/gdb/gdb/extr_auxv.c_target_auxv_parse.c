
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
typedef int CORE_ADDR ;


 int TYPE_LENGTH (int ) ;
 int builtin_type_void_data_ptr ;
 int extract_unsigned_integer (char*,int const) ;

int
target_auxv_parse (struct target_ops *ops, char **readptr, char *endptr,
     CORE_ADDR *typep, CORE_ADDR *valp)
{
  const int sizeof_auxv_field = TYPE_LENGTH (builtin_type_void_data_ptr);
  char *ptr = *readptr;

  if (endptr == ptr)
    return 0;

  if (endptr - ptr < sizeof_auxv_field * 2)
    return -1;

  *typep = extract_unsigned_integer (ptr, sizeof_auxv_field);
  ptr += sizeof_auxv_field;
  *valp = extract_unsigned_integer (ptr, sizeof_auxv_field);
  ptr += sizeof_auxv_field;

  *readptr = ptr;
  return 1;
}
