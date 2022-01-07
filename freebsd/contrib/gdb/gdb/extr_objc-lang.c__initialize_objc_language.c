
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int) ;
 int add_info (char*,int ,char*) ;
 int add_language (int *) ;
 int class_vars ;
 int classes_info ;
 int objc_language_defn ;
 int print_object_command ;
 int selectors_info ;

void
_initialize_objc_language (void)
{
  add_language (&objc_language_defn);
  add_info ("selectors", selectors_info,
     "All Objective-C selectors, or those matching REGEXP.");
  add_info ("classes", classes_info,
     "All Objective-C classes, or those matching REGEXP.");
  add_com ("print-object", class_vars, print_object_command,
    "Ask an Objective-C object to print itself.");
  add_com_alias ("po", "print-object", class_vars, 1);
}
