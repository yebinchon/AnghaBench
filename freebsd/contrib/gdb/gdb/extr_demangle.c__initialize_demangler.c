
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_list_element {int dummy; } ;
struct TYPE_2__ {scalar_t__ demangling_style; int demangling_style_name; } ;


 int DEFAULT_DEMANGLING_STYLE ;
 struct cmd_list_element* add_set_enum_cmd (char*,int ,int *,char const**,char*,int *) ;
 struct cmd_list_element* add_show_from_set (struct cmd_list_element*,int *) ;
 int class_support ;
 int current_demangling_style_string ;
 int * demangling_style_names ;
 TYPE_1__* libiberty_demanglers ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int set_demangling_command ;
 int set_demangling_style (int ) ;
 int setlist ;
 int showlist ;
 scalar_t__ unknown_demangling ;
 int * xcalloc (int,int) ;
 int xstrdup (int ) ;

void
_initialize_demangler (void)
{
  struct cmd_list_element *set, *show;
  int i, ndems;


  for (ndems = 0;
       libiberty_demanglers[ndems].demangling_style != unknown_demangling;
       ndems++)
    ;
  demangling_style_names = xcalloc (ndems + 1, sizeof (char *));
  for (i = 0;
       libiberty_demanglers[i].demangling_style != unknown_demangling;
       i++)
    demangling_style_names[i] =
      xstrdup (libiberty_demanglers[i].demangling_style_name);

  set = add_set_enum_cmd ("demangle-style", class_support,
     demangling_style_names,
     (const char **) &current_demangling_style_string,
     "Set the current C++ demangling style.\nUse `set demangle-style' without arguments for a list of demangling styles.",

     &setlist);
  show = add_show_from_set (set, &showlist);
  set_cmd_sfunc (set, set_demangling_command);


  set_demangling_style (DEFAULT_DEMANGLING_STYLE);
}
