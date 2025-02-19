
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* type; } ;
struct TYPE_6__ {TYPE_2__ s_builtin; } ;
struct demangle_component {int type; TYPE_3__ u; } ;
struct d_info {int expansion; } ;
struct TYPE_4__ {int len; } ;


 int DEMANGLE_COMPONENT_COMPLEX ;
 int DEMANGLE_COMPONENT_IMAGINARY ;
 int DEMANGLE_COMPONENT_POINTER ;
 int DEMANGLE_COMPONENT_REFERENCE ;
 int DEMANGLE_COMPONENT_SUB_STD ;
 int DEMANGLE_COMPONENT_TEMPLATE ;
 int DEMANGLE_COMPONENT_VENDOR_TYPE ;
 int DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL ;
 int IS_DIGIT (char) ;
 int IS_UPPER (char) ;
 int * cplus_demangle_builtin_types ;
 int d_add_substitution (struct d_info*,struct demangle_component*) ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_array_type (struct d_info*) ;
 struct demangle_component* d_class_enum_type (struct d_info*) ;
 struct demangle_component** d_cv_qualifiers (struct d_info*,struct demangle_component**,int ) ;
 struct demangle_component* d_function_type (struct d_info*) ;
 struct demangle_component* d_make_builtin_type (struct d_info*,int *) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 char d_peek_char (struct d_info*) ;
 char d_peek_next_char (struct d_info*) ;
 struct demangle_component* d_pointer_to_member_type (struct d_info*) ;
 struct demangle_component* d_source_name (struct d_info*) ;
 struct demangle_component* d_substitution (struct d_info*,int ) ;
 struct demangle_component* d_template_args (struct d_info*) ;
 struct demangle_component* d_template_param (struct d_info*) ;

struct demangle_component *
cplus_demangle_type (struct d_info *di)
{
  char peek;
  struct demangle_component *ret;
  int can_subst;
  peek = d_peek_char (di);
  if (peek == 'r' || peek == 'V' || peek == 'K')
    {
      struct demangle_component **pret;

      pret = d_cv_qualifiers (di, &ret, 0);
      if (pret == ((void*)0))
 return ((void*)0);
      *pret = cplus_demangle_type (di);
      if (! *pret || ! d_add_substitution (di, ret))
 return ((void*)0);
      return ret;
    }

  can_subst = 1;

  switch (peek)
    {
    case 'a': case 'b': case 'c': case 'd': case 'e': case 'f': case 'g':
    case 'h': case 'i': case 'j': case 'l': case 'm': case 'n':
    case 'o': case 's': case 't':
    case 'v': case 'w': case 'x': case 'y': case 'z':
      ret = d_make_builtin_type (di,
     &cplus_demangle_builtin_types[peek - 'a']);
      di->expansion += ret->u.s_builtin.type->len;
      can_subst = 0;
      d_advance (di, 1);
      break;

    case 'u':
      d_advance (di, 1);
      ret = d_make_comp (di, DEMANGLE_COMPONENT_VENDOR_TYPE,
    d_source_name (di), ((void*)0));
      break;

    case 'F':
      ret = d_function_type (di);
      break;

    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
    case 'N':
    case 'Z':
      ret = d_class_enum_type (di);
      break;

    case 'A':
      ret = d_array_type (di);
      break;

    case 'M':
      ret = d_pointer_to_member_type (di);
      break;

    case 'T':
      ret = d_template_param (di);
      if (d_peek_char (di) == 'I')
 {



   if (! d_add_substitution (di, ret))
     return ((void*)0);
   ret = d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE, ret,
        d_template_args (di));
 }
      break;

    case 'S':


      {
 char peek_next;

 peek_next = d_peek_next_char (di);
 if (IS_DIGIT (peek_next)
     || peek_next == '_'
     || IS_UPPER (peek_next))
   {
     ret = d_substitution (di, 0);


     if (d_peek_char (di) == 'I')
       ret = d_make_comp (di, DEMANGLE_COMPONENT_TEMPLATE, ret,
     d_template_args (di));
     else
       can_subst = 0;
   }
 else
   {
     ret = d_class_enum_type (di);




     if (ret != ((void*)0) && ret->type == DEMANGLE_COMPONENT_SUB_STD)
       can_subst = 0;
   }
      }
      break;

    case 'P':
      d_advance (di, 1);
      ret = d_make_comp (di, DEMANGLE_COMPONENT_POINTER,
    cplus_demangle_type (di), ((void*)0));
      break;

    case 'R':
      d_advance (di, 1);
      ret = d_make_comp (di, DEMANGLE_COMPONENT_REFERENCE,
    cplus_demangle_type (di), ((void*)0));
      break;

    case 'C':
      d_advance (di, 1);
      ret = d_make_comp (di, DEMANGLE_COMPONENT_COMPLEX,
    cplus_demangle_type (di), ((void*)0));
      break;

    case 'G':
      d_advance (di, 1);
      ret = d_make_comp (di, DEMANGLE_COMPONENT_IMAGINARY,
    cplus_demangle_type (di), ((void*)0));
      break;

    case 'U':
      d_advance (di, 1);
      ret = d_source_name (di);
      ret = d_make_comp (di, DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL,
    cplus_demangle_type (di), ret);
      break;

    default:
      return ((void*)0);
    }

  if (can_subst)
    {
      if (! d_add_substitution (di, ret))
 return ((void*)0);
    }

  return ret;
}
