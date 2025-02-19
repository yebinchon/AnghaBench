
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int expansion; } ;


 int DEMANGLE_COMPONENT_QUAL_NAME ;
 int DEMANGLE_COMPONENT_TEMPLATE ;
 int d_add_substitution (struct d_info*,struct demangle_component*) ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_local_name (struct d_info*) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_make_name (struct d_info*,char*,int) ;
 struct demangle_component* d_nested_name (struct d_info*) ;
 char d_peek_char (struct d_info*) ;
 char d_peek_next_char (struct d_info*) ;
 struct demangle_component* d_substitution (struct d_info*,int ) ;
 struct demangle_component* d_template_args (struct d_info*) ;
 struct demangle_component* d_unqualified_name (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_name (struct d_info *di)
{
  char peek = d_peek_char (di);
  struct demangle_component *dc;

  switch (peek)
    {
    case 'N':
      return d_nested_name (di);

    case 'Z':
      return d_local_name (di);

    case 'L':
      return d_unqualified_name (di);

    case 'S':
      {
 int subst;

 if (d_peek_next_char (di) != 't')
   {
     dc = d_substitution (di, 0);
     subst = 1;
   }
 else
   {
     d_advance (di, 2);
     dc = d_make_comp (di, DEMANGLE_COMPONENT_QUAL_NAME,
         d_make_name (di, "std", 3),
         d_unqualified_name (di));
     di->expansion += 3;
     subst = 0;
   }

 if (d_peek_char (di) != 'I')
   {



   }
 else
   {




     if (! subst)
       {
  if (! d_add_substitution (di, dc))
    return ((void*)0);
       }
     dc = d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE, dc,
         d_template_args (di));
   }

 return dc;
      }

    default:
      dc = d_unqualified_name (di);
      if (d_peek_char (di) == 'I')
 {



   if (! d_add_substitution (di, dc))
     return ((void*)0);
   dc = d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE, dc,
       d_template_args (di));
 }
      return dc;
    }
}
