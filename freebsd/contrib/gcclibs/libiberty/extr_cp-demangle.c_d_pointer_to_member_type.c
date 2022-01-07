
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {scalar_t__ type; } ;
struct d_info {int dummy; } ;


 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_TYPE ;
 int DEMANGLE_COMPONENT_PTRMEM_TYPE ;
 struct demangle_component* cplus_demangle_type (struct d_info*) ;
 int d_add_substitution (struct d_info*,struct demangle_component*) ;
 int d_check_char (struct d_info*,char) ;
 struct demangle_component** d_cv_qualifiers (struct d_info*,struct demangle_component**,int) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;

__attribute__((used)) static struct demangle_component *
d_pointer_to_member_type (struct d_info *di)
{
  struct demangle_component *cl;
  struct demangle_component *mem;
  struct demangle_component **pmem;

  if (! d_check_char (di, 'M'))
    return ((void*)0);

  cl = cplus_demangle_type (di);
  pmem = d_cv_qualifiers (di, &mem, 1);
  if (pmem == ((void*)0))
    return ((void*)0);
  *pmem = cplus_demangle_type (di);
  if (*pmem == ((void*)0))
    return ((void*)0);

  if (pmem != &mem && (*pmem)->type != DEMANGLE_COMPONENT_FUNCTION_TYPE)
    {
      if (! d_add_substitution (di, mem))
 return ((void*)0);
    }

  return d_make_comp (di, DEMANGLE_COMPONENT_PTRMEM_TYPE, cl, mem);
}
