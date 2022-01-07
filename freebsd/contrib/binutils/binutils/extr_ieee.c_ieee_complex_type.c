
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_handle {TYPE_2__* type_stack; int complex_double_index; int complex_float_index; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {int indx; } ;
struct TYPE_4__ {TYPE_1__ type; } ;


 int FALSE ;
 int TRUE ;
 char* _ (char*) ;
 int fprintf (int ,char*,unsigned int) ;
 int ieee_define_type (struct ieee_handle*,unsigned int,int ,int ) ;
 int ieee_push_type (struct ieee_handle*,int ,unsigned int,int ,int ) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,char) ;
 int stderr ;

__attribute__((used)) static bfd_boolean
ieee_complex_type (void *p, unsigned int size)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  char code;

  switch (size)
    {
    case 4:
      if (info->complex_float_index != 0)
 return ieee_push_type (info, info->complex_float_index, size * 2,
          FALSE, FALSE);
      code = 'c';
      break;
    case 12:
    case 16:


    case 8:
      if (info->complex_double_index != 0)
 return ieee_push_type (info, info->complex_double_index, size * 2,
          FALSE, FALSE);
      code = 'd';
      break;
    default:
      fprintf (stderr, _("IEEE unsupported complex type size %u\n"), size);
      return FALSE;
    }


  if (! ieee_define_type (info, size * 2, FALSE, FALSE)
      || ! ieee_write_number (info, code)
      || ! ieee_write_id (info, ""))
    return FALSE;

  if (size == 4)
    info->complex_float_index = info->type_stack->type.indx;
  else
    info->complex_double_index = info->type_stack->type.indx;

  return TRUE;
}
