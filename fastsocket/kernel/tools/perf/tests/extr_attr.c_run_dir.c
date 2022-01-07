
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int snprintf (char*,int,char*,char const*,char const*,char const*,char*) ;
 int system (char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int run_dir(const char *d, const char *perf)
{
 char cmd[3*PATH_MAX];

 snprintf(cmd, 3*PATH_MAX, "python %s/attr.py -d %s/attr/ -p %s %s",
   d, d, perf, verbose ? "-v" : "");

 return system(cmd);
}
