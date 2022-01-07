
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* myname ;
 int stderr ;

void
open_error(const char *filename)
{
    fprintf(stderr, "%s: f - cannot open \"%s\"\n", myname, filename);
    done(2);
}
