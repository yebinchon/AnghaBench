
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct header_file {int instance; int name; } ;


 struct header_file* HEADER_FILES (int ) ;
 int N_HEADER_FILES (int ) ;
 int add_this_object_header_file (int) ;
 int current_objfile ;
 int repeated_header_complaint (char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int symnum ;

__attribute__((used)) static void
add_old_header_file (char *name, int instance)
{
  struct header_file *p = HEADER_FILES (current_objfile);
  int i;

  for (i = 0; i < N_HEADER_FILES (current_objfile); i++)
    if (strcmp (p[i].name, name) == 0 && instance == p[i].instance)
      {
 add_this_object_header_file (i);
 return;
      }
  repeated_header_complaint (name, symnum);
}
