
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int target_flags ;
struct cl_option_state {scalar_t__ size; int data; } ;
struct TYPE_4__ {int opt_text; } ;
struct TYPE_3__ {char* (* check_pch_target_flags ) (int) ;} ;


 char const* _ (char*) ;
 TYPE_2__* cl_options ;
 size_t cl_options_count ;
 char const flag_pic ;
 char const flag_pie ;
 scalar_t__ memcmp (char const*,int ,scalar_t__) ;
 int memcpy (int*,char const*,int) ;
 scalar_t__ option_affects_pch_p (size_t,struct cl_option_state*) ;
 char const* pch_option_mismatch (int ) ;
 char* stub1 (int) ;
 TYPE_1__ targetm ;

const char *
default_pch_valid_p (const void *data_p, size_t len)
{
  struct cl_option_state state;
  const char *data = (const char *)data_p;
  size_t i;


  if (data[0] != flag_pic)
    return _("created and used with different settings of -fpic");
  if (data[1] != flag_pie)
    return _("created and used with different settings of -fpie");
  data += 2;


  if (targetm.check_pch_target_flags)
    {
      int tf;
      const char *r;

      memcpy (&tf, data, sizeof (target_flags));
      data += sizeof (target_flags);
      len -= sizeof (target_flags);
      r = targetm.check_pch_target_flags (tf);
      if (r != ((void*)0))
 return r;
    }

  for (i = 0; i < cl_options_count; i++)
    if (option_affects_pch_p (i, &state))
      {
 if (memcmp (data, state.data, state.size) != 0)
   return pch_option_mismatch (cl_options[i].opt_text);
 data += state.size;
 len -= state.size;
      }

  return ((void*)0);
}
