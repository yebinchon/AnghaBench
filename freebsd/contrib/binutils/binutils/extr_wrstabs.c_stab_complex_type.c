
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {long type_index; } ;
typedef int bfd_boolean ;


 int TRUE ;
 int sprintf (char*,char*,long,long,unsigned int) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int ,unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_complex_type (void *p, unsigned int size)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char buf[50];
  long index;

  index = info->type_index;
  ++info->type_index;

  sprintf (buf, "%ld=r%ld;%u;0;", index, index, size);

  return stab_push_string (info, buf, index, TRUE, size * 2);
}
