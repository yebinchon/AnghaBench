
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ void_type; } ;
struct stab_write_handle {long type_index; TYPE_1__ type_cache; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int sprintf (char*,char*,long,long) ;
 int stab_push_defined_type (struct stab_write_handle*,scalar_t__,int ) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int ,int ) ;

__attribute__((used)) static bfd_boolean
stab_empty_type (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;




  if (info->type_cache.void_type != 0)
    return stab_push_defined_type (info, info->type_cache.void_type, 0);
  else
    {
      long index;
      char buf[40];

      index = info->type_index;
      ++info->type_index;

      sprintf (buf, "%ld=%ld", index, index);

      return stab_push_string (info, buf, index, FALSE, 0);
    }
}
