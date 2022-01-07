
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (int *) ;
 int exit (int) ;
 int printsignals (int ) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
nosig(const char *name)
{

 warnx("unknown signal %s; valid signals:", name);
 printsignals(stderr);



 exit(2);

}
