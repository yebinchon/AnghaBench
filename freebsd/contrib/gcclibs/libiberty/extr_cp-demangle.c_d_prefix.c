
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;
typedef enum demangle_component_type { ____Placeholder_demangle_component_type } demangle_component_type ;


 int DEMANGLE_COMPONENT_QUAL_NAME ;
 int DEMANGLE_COMPONENT_TEMPLATE ;
 scalar_t__ IS_DIGIT (char) ;
 scalar_t__ IS_LOWER (char) ;
 int d_add_substitution (struct d_info*,struct demangle_component*) ;
 struct demangle_component* d_make_comp (struct d_info*,int,struct demangle_component*,struct demangle_component*) ;
 char d_peek_char (struct d_info*) ;
 struct demangle_component* d_substitution (struct d_info*,int) ;
 struct demangle_component* d_template_args (struct d_info*) ;
 struct demangle_component* d_template_param (struct d_info*) ;
 struct demangle_component* d_unqualified_name (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_prefix (struct d_info *di)
{
  struct demangle_component *ret = ((void*)0);

  while (1)
    {
      char peek;
      enum demangle_component_type comb_type;
      struct demangle_component *dc;

      peek = d_peek_char (di);
      if (peek == '\0')
 return ((void*)0);





      comb_type = DEMANGLE_COMPONENT_QUAL_NAME;
      if (IS_DIGIT (peek)
   || IS_LOWER (peek)
   || peek == 'C'
   || peek == 'D'
   || peek == 'L')
 dc = d_unqualified_name (di);
      else if (peek == 'S')
 dc = d_substitution (di, 1);
      else if (peek == 'I')
 {
   if (ret == ((void*)0))
     return ((void*)0);
   comb_type = DEMANGLE_COMPONENT_TEMPLATE;
   dc = d_template_args (di);
 }
      else if (peek == 'T')
 dc = d_template_param (di);
      else if (peek == 'E')
 return ret;
      else
 return ((void*)0);

      if (ret == ((void*)0))
 ret = dc;
      else
 ret = d_make_comp (di, comb_type, ret, dc);

      if (peek != 'S' && d_peek_char (di) != 'E')
 {
   if (! d_add_substitution (di, ret))
     return ((void*)0);
 }
    }
}
