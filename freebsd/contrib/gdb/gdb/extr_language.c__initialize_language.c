
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_alias_cmd (char*,char*,int ,int,int *) ;
 int add_language (int *) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 struct cmd_list_element* add_show_from_set (struct cmd_list_element*,int *) ;
 int auto_language_defn ;
 void* case_sensitive ;
 int class_support ;
 void* language ;
 int language_auto ;
 int local_language_defn ;
 int no_class ;
 void* range ;
 void* savestring (char*,int ) ;
 int set_case_command ;
 int set_check ;
 int set_cmd_cfunc (struct cmd_list_element*,int ) ;
 int set_language (int ) ;
 int set_language_command ;
 int set_range_command ;
 int set_type_command ;
 int setchecklist ;
 int setlist ;
 int show_case_command ;
 int show_check ;
 int show_language_command ;
 int show_range_command ;
 int show_type_command ;
 int showchecklist ;
 int showlist ;
 int strlen (char*) ;
 void* type ;
 int unknown_language_defn ;
 int var_string_noescape ;

void
_initialize_language (void)
{
  struct cmd_list_element *set, *show;



  set = add_set_cmd ("language", class_support, var_string_noescape,
       (char *) &language,
       "Set the current source language.",
       &setlist);
  show = add_show_from_set (set, &showlist);
  set_cmd_cfunc (set, set_language_command);
  set_cmd_cfunc (show, show_language_command);

  add_prefix_cmd ("check", no_class, set_check,
    "Set the status of the type/range checker.",
    &setchecklist, "set check ", 0, &setlist);
  add_alias_cmd ("c", "check", no_class, 1, &setlist);
  add_alias_cmd ("ch", "check", no_class, 1, &setlist);

  add_prefix_cmd ("check", no_class, show_check,
    "Show the status of the type/range checker.",
    &showchecklist, "show check ", 0, &showlist);
  add_alias_cmd ("c", "check", no_class, 1, &showlist);
  add_alias_cmd ("ch", "check", no_class, 1, &showlist);

  set = add_set_cmd ("type", class_support, var_string_noescape,
       (char *) &type,
       "Set type checking.  (on/warn/off/auto)",
       &setchecklist);
  show = add_show_from_set (set, &showchecklist);
  set_cmd_cfunc (set, set_type_command);
  set_cmd_cfunc (show, show_type_command);

  set = add_set_cmd ("range", class_support, var_string_noescape,
       (char *) &range,
       "Set range checking.  (on/warn/off/auto)",
       &setchecklist);
  show = add_show_from_set (set, &showchecklist);
  set_cmd_cfunc (set, set_range_command);
  set_cmd_cfunc (show, show_range_command);

  set = add_set_cmd ("case-sensitive", class_support, var_string_noescape,
                     (char *) &case_sensitive,
                     "Set case sensitivity in name search.  (on/off/auto)\nFor Fortran the default is off; for other languages the default is on.",

                     &setlist);
  show = add_show_from_set (set, &showlist);
  set_cmd_cfunc (set, set_case_command);
  set_cmd_cfunc (show, show_case_command);

  add_language (&unknown_language_defn);
  add_language (&local_language_defn);
  add_language (&auto_language_defn);

  language = savestring ("auto", strlen ("auto"));
  type = savestring ("auto", strlen ("auto"));
  range = savestring ("auto", strlen ("auto"));
  case_sensitive = savestring ("auto",strlen ("auto"));


  set_language (language_auto);
}
