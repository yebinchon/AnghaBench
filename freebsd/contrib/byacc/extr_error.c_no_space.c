
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done (int) ;
 int fprintf (int ,char*,char*) ;
 char* myname ;
 int stderr ;

void
no_space(void)
{
    fprintf(stderr, "%s: f - out of space\n", myname);
    done(2);
}
