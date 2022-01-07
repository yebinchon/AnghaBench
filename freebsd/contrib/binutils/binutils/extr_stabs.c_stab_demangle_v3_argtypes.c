
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stab_handle {int dummy; } ;
struct TYPE_9__ {TYPE_3__* right; } ;
struct TYPE_10__ {TYPE_4__ s_binary; } ;
struct demangle_component {scalar_t__ type; TYPE_5__ u; } ;
typedef int debug_type ;
typedef int bfd_boolean ;
struct TYPE_6__ {int right; } ;
struct TYPE_7__ {TYPE_1__ s_binary; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;


 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_TYPE ;
 scalar_t__ DEMANGLE_COMPONENT_TYPED_NAME ;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 char* _ (char*) ;
 struct demangle_component* cplus_demangle_v3_components (char const*,int,void**) ;
 int fprintf (int ,char*) ;
 int free (void*) ;
 int stab_bad_demangle (char const*) ;
 int * stab_demangle_v3_arglist (void*,struct stab_handle*,int ,int *) ;
 int stderr ;

__attribute__((used)) static debug_type *
stab_demangle_v3_argtypes (void *dhandle, struct stab_handle *info,
      const char *physname, bfd_boolean *pvarargs)
{
  struct demangle_component *dc;
  void *mem;
  debug_type *pargs;

  dc = cplus_demangle_v3_components (physname, DMGL_PARAMS | DMGL_ANSI, &mem);
  if (dc == ((void*)0))
    {
      stab_bad_demangle (physname);
      return ((void*)0);
    }



  if (dc->type != DEMANGLE_COMPONENT_TYPED_NAME
      || dc->u.s_binary.right->type != DEMANGLE_COMPONENT_FUNCTION_TYPE)
    {
      fprintf (stderr, _("Demangled name is not a function\n"));
      free (mem);
      return ((void*)0);
    }

  pargs = stab_demangle_v3_arglist (dhandle, info,
        dc->u.s_binary.right->u.s_binary.right,
        pvarargs);

  free (mem);

  return pargs;
}
