
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,int,char*,int) ;
 char* input_file_name ;
 char* myname ;
 int stderr ;

void
dollar_warning(int a_lineno, int i)
{
    fprintf(stderr, "%s: w - line %d of \"%s\", $%d references beyond the end of the current rule\n", myname, a_lineno, input_file_name, i);

}
