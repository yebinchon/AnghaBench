
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ENOMEM ;
 char** calloc (int,int) ;
 scalar_t__ header_argc ;
 char const** header_argv ;

int
perf_header__set_cmdline(int argc, const char **argv)
{
 int i;







 if (header_argv)
  return 0;

 header_argc = (u32)argc;


 header_argv = calloc(argc, sizeof(char *));
 if (!header_argv)
  return -ENOMEM;





 for (i = 0; i < argc ; i++)
  header_argv[i] = argv[i];

 return 0;
}
