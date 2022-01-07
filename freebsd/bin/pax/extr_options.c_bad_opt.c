
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* value; } ;
typedef TYPE_1__ OPLIST ;


 int fprintf (int ,char*,char*,char*) ;
 int * ophead ;
 TYPE_1__* opt_next () ;
 int pax_usage () ;
 int paxwarn (int,char*) ;
 int stderr ;

int
bad_opt(void)
{
 OPLIST *opt;

 if (ophead == ((void*)0))
  return(0);



 paxwarn(1,"These format options are not supported");
 while ((opt = opt_next()) != ((void*)0))
  (void)fprintf(stderr, "\t%s = %s\n", opt->name, opt->value);
 pax_usage();
 return(0);
}
