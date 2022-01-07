
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int sprintf (char*,char*,long) ;
 int stab_push_string (struct stab_write_handle*,char*,long,int ,unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_push_defined_type (struct stab_write_handle *info, long index,
   unsigned int size)
{
  char buf[20];

  sprintf (buf, "%ld", index);
  return stab_push_string (info, buf, index, FALSE, size);
}
