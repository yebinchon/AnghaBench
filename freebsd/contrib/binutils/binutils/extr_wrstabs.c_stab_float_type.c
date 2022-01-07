
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* float_types; } ;
struct stab_write_handle {long type_index; TYPE_1__ type_cache; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int free (char*) ;
 int sprintf (char*,char*,long,char*,unsigned int) ;
 int stab_int_type (struct stab_write_handle*,int,int ) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_push_defined_type (struct stab_write_handle*,scalar_t__,unsigned int) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int ,unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_float_type (void *p, unsigned int size)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;

  if (size > 0
      && size - 1 < (sizeof info->type_cache.float_types
       / sizeof info->type_cache.float_types[0])
      && info->type_cache.float_types[size - 1] != 0)
    return stab_push_defined_type (info,
       info->type_cache.float_types[size - 1],
       size);
  else
    {
      long index;
      char *int_type;
      char buf[50];


      if (! stab_int_type (info, 4, FALSE))
 return FALSE;
      int_type = stab_pop_type (info);

      index = info->type_index;
      ++info->type_index;

      if (size > 0
   && size - 1 < (sizeof info->type_cache.float_types
    / sizeof info->type_cache.float_types[0]))
 info->type_cache.float_types[size - 1] = index;

      sprintf (buf, "%ld=r%s;%u;0;", index, int_type, size);

      free (int_type);

      return stab_push_string (info, buf, index, TRUE, size);
    }
}
