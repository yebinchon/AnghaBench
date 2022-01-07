
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,int,char*,char*) ;
 char* input_file_name ;
 int lineno ;
 char* myname ;
 int stderr ;

void
default_action_warning(char *s)
{
    fprintf(stderr,
     "%s: w - line %d of \"%s\", the default action for %s assigns an undefined value to $$\n",

     myname, lineno, input_file_name, s);
}
