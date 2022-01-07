
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {int dummy; } ;
typedef enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef int bfd_boolean ;


 int FALSE ;
 long stab_get_struct_index (struct stab_write_handle*,char const*,unsigned int,int,unsigned int*) ;
 int stab_push_defined_type (struct stab_write_handle*,long,unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_tag_type (void *p, const char *name, unsigned int id,
        enum debug_type_kind kind)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  long index;
  unsigned int size = 0;

  index = stab_get_struct_index (info, name, id, kind, &size);
  if (index < 0)
    return FALSE;

  return stab_push_defined_type (info, index, size);
}
