
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stab_handle {int dummy; } ;
struct TYPE_3__ {int left; struct demangle_component* right; } ;
struct TYPE_4__ {TYPE_1__ s_binary; } ;
struct demangle_component {scalar_t__ type; TYPE_2__ u; } ;
typedef int * debug_type ;
typedef scalar_t__ bfd_boolean ;


 int * DEBUG_TYPE_NULL ;
 scalar_t__ DEMANGLE_COMPONENT_ARGLIST ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* _ (char*) ;
 int fprintf (int ,char*) ;
 int free (int **) ;
 int * stab_demangle_v3_arg (void*,struct stab_handle*,int ,int *,scalar_t__*) ;
 int stderr ;
 scalar_t__ xmalloc (unsigned int) ;
 scalar_t__ xrealloc (int **,unsigned int) ;

__attribute__((used)) static debug_type *
stab_demangle_v3_arglist (void *dhandle, struct stab_handle *info,
     struct demangle_component *arglist,
     bfd_boolean *pvarargs)
{
  struct demangle_component *dc;
  unsigned int alloc, count;
  debug_type *pargs;

  alloc = 10;
  pargs = (debug_type *) xmalloc (alloc * sizeof *pargs);
  *pvarargs = FALSE;

  count = 0;

  for (dc = arglist;
       dc != ((void*)0);
       dc = dc->u.s_binary.right)
    {
      debug_type arg;
      bfd_boolean varargs;

      if (dc->type != DEMANGLE_COMPONENT_ARGLIST)
 {
   fprintf (stderr, _("Unexpected type in v3 arglist demangling\n"));
   free (pargs);
   return ((void*)0);
 }

      arg = stab_demangle_v3_arg (dhandle, info, dc->u.s_binary.left,
      ((void*)0), &varargs);
      if (arg == ((void*)0))
 {
   if (varargs)
     {
       *pvarargs = TRUE;
       continue;
     }
   free (pargs);
   return ((void*)0);
 }

      if (count + 1 >= alloc)
 {
   alloc += 10;
   pargs = (debug_type *) xrealloc (pargs, alloc * sizeof *pargs);
 }

      pargs[count] = arg;
      ++count;
    }

  pargs[count] = DEBUG_TYPE_NULL;

  return pargs;
}
