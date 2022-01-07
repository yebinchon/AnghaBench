
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_LOCAL_NAME ;
 int d_advance (struct d_info*,int) ;
 int d_check_char (struct d_info*,char) ;
 int d_discriminator (struct d_info*) ;
 struct demangle_component* d_encoding (struct d_info*,int ) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_make_name (struct d_info*,char*,int) ;
 struct demangle_component* d_name (struct d_info*) ;
 char d_peek_char (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_local_name (struct d_info *di)
{
  struct demangle_component *function;

  if (! d_check_char (di, 'Z'))
    return ((void*)0);

  function = d_encoding (di, 0);

  if (! d_check_char (di, 'E'))
    return ((void*)0);

  if (d_peek_char (di) == 's')
    {
      d_advance (di, 1);
      if (! d_discriminator (di))
 return ((void*)0);
      return d_make_comp (di, DEMANGLE_COMPONENT_LOCAL_NAME, function,
     d_make_name (di, "string literal",
           sizeof "string literal" - 1));
    }
  else
    {
      struct demangle_component *name;

      name = d_name (di);
      if (! d_discriminator (di))
 return ((void*)0);
      return d_make_comp (di, DEMANGLE_COMPONENT_LOCAL_NAME, function, name);
    }
}
