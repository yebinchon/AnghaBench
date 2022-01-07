
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 char* _ (char*) ;
 scalar_t__ builtin_double ;
 scalar_t__ builtin_float ;
 scalar_t__ builtin_long_double ;
 scalar_t__ builtin_long_long_double ;
 int fprintf (int ,char*,unsigned int) ;
 int ieee_push_type (struct ieee_handle*,unsigned int,unsigned int,int ,int ) ;
 int stderr ;

__attribute__((used)) static bfd_boolean
ieee_float_type (void *p, unsigned int size)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int indx;

  switch (size)
    {
    case 4:
      indx = (int) builtin_float;
      break;
    case 8:
      indx = (int) builtin_double;
      break;
    case 12:

      indx = (int) builtin_long_double;
      break;
    case 16:
      indx = (int) builtin_long_long_double;
      break;
    default:
      fprintf (stderr, _("IEEE unsupported float type size %u\n"), size);
      return FALSE;
    }

  return ieee_push_type (info, indx, size, FALSE, FALSE);
}
