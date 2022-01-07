
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* myname ;
 int stderr ;

void
fatal(const char *msg)
{
    fprintf(stderr, "%s: f - %s\n", myname, msg);
    done(2);
}
