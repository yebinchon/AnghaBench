
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char const*,char const*) ;
 char* myname ;
 int stderr ;

void
unsupported_flag_warning(const char *flag, const char *details)
{
    fprintf(stderr, "%s: w - %s flag unsupported, %s\n",
     myname, flag, details);
}
