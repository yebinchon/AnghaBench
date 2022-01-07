
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char*) ;
 char* myname ;
 int stderr ;

void
undefined_symbol_warning(char *s)
{
    fprintf(stderr, "%s: w - the symbol %s is undefined\n", myname, s);
}
