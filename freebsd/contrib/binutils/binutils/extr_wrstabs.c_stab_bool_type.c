
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {int dummy; } ;
typedef int bfd_boolean ;


 int stab_push_defined_type (struct stab_write_handle*,long,unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_bool_type (void *p, unsigned int size)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  long index;

  switch (size)
    {
    case 1:
      index = -21;
      break;

    case 2:
      index = -22;
      break;

    default:
    case 4:
      index = -16;
      break;

    case 8:
      index = -33;
      break;
    }

  return stab_push_defined_type (info, index, size);
}
