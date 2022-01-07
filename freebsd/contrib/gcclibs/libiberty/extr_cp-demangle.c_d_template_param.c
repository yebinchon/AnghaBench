
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int did_subs; } ;


 int d_check_char (struct d_info*,char) ;
 struct demangle_component* d_make_template_param (struct d_info*,long) ;
 long d_number (struct d_info*) ;
 char d_peek_char (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_template_param (struct d_info *di)
{
  long param;

  if (! d_check_char (di, 'T'))
    return ((void*)0);

  if (d_peek_char (di) == '_')
    param = 0;
  else
    {
      param = d_number (di);
      if (param < 0)
 return ((void*)0);
      param += 1;
    }

  if (! d_check_char (di, '_'))
    return ((void*)0);

  ++di->did_subs;

  return d_make_template_param (di, param);
}
