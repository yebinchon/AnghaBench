
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int record_debugformat (char*) ;
 int savestring (char*,int ) ;
 int start_symtab (int ,int *,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
coff_start_symtab (char *name)
{
  start_symtab (




   savestring (name, strlen (name)),

   ((void*)0),


   0);
  record_debugformat ("COFF");
}
