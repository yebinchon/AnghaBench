
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ OPLIST ;


 scalar_t__ APPND ;
 scalar_t__ ARCHIVE ;
 int TAR_NODIR ;
 int TAR_OPTION ;
 scalar_t__ act ;
 TYPE_1__* opt_next () ;
 int paxwarn (int,char*,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int tar_nodir ;

int
tar_opt(void)
{
 OPLIST *opt;

 while ((opt = opt_next()) != ((void*)0)) {
  if (strcmp(opt->name, TAR_OPTION) ||
      strcmp(opt->value, TAR_NODIR)) {
   paxwarn(1, "Unknown tar format -o option/value pair %s=%s",
       opt->name, opt->value);
   paxwarn(1,"%s=%s is the only supported tar format option",
       TAR_OPTION, TAR_NODIR);
   return(-1);
  }




  if ((act != APPND) && (act != ARCHIVE)) {
   paxwarn(1, "%s=%s is only supported when writing.",
       opt->name, opt->value);
   return(-1);
  }
  tar_nodir = 1;
 }
 return(0);
}
