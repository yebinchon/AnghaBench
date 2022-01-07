
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* printer; } ;
typedef TYPE_1__ diagnostic_context ;
struct TYPE_11__ {int (* decl_printable_name ) (int *,int) ;} ;
struct TYPE_10__ {char* prefix; } ;


 scalar_t__ METHOD_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int *) ;
 int _ (char*) ;
 int * current_function_decl ;
 scalar_t__ diagnostic_last_function_changed (TYPE_1__*) ;
 int diagnostic_set_last_function (TYPE_1__*) ;
 char* file_name_as_prefix (char const*) ;
 int free (char*) ;
 TYPE_6__ lang_hooks ;
 int pp_flush (TYPE_2__*) ;
 int pp_printf (TYPE_2__*,int ,...) ;
 int pp_set_prefix (TYPE_2__*,char*) ;
 int stub1 (int *,int) ;
 int stub2 (int *,int) ;

void
lhd_print_error_function (diagnostic_context *context, const char *file)
{
  if (diagnostic_last_function_changed (context))
    {
      const char *old_prefix = context->printer->prefix;
      char *new_prefix = file ? file_name_as_prefix (file) : ((void*)0);

      pp_set_prefix (context->printer, new_prefix);

      if (current_function_decl == ((void*)0))
 pp_printf (context->printer, _("At top level:"));
      else
 {
   if (TREE_CODE (TREE_TYPE (current_function_decl)) == METHOD_TYPE)
     pp_printf
       (context->printer, _("In member function %qs:"),
        lang_hooks.decl_printable_name (current_function_decl, 2));
   else
     pp_printf
       (context->printer, _("In function %qs:"),
        lang_hooks.decl_printable_name (current_function_decl, 2));
 }

      diagnostic_set_last_function (context);
      pp_flush (context->printer);
      context->printer->prefix = old_prefix;
      free ((char*) new_prefix);
    }
}
