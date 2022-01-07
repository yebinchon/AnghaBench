
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t bfd_error_type ;
struct TYPE_2__ {int filename; } ;


 char const* _ (int ) ;
 int asprintf (char**,char const*,int ,char const*) ;
 int * bfd_errmsgs ;
 size_t bfd_error_invalid_error_code ;
 size_t bfd_error_on_input ;
 size_t bfd_error_system_call ;
 TYPE_1__* input_bfd ;
 size_t input_error ;
 char const* xstrerror (int) ;

const char *
bfd_errmsg (bfd_error_type error_tag)
{

  extern int errno;

  if (error_tag == bfd_error_on_input)
    {
      char *buf;
      const char *msg = bfd_errmsg (input_error);

      if (asprintf (&buf, _(bfd_errmsgs [error_tag]), input_bfd->filename, msg)
   != -1)
 return buf;


      return msg;
    }

  if (error_tag == bfd_error_system_call)
    return xstrerror (errno);

  if (error_tag > bfd_error_invalid_error_code)
    error_tag = bfd_error_invalid_error_code;

  return _(bfd_errmsgs [error_tag]);
}
