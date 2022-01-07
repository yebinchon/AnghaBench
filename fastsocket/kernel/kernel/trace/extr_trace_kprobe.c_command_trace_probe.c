
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int argv_free (char**) ;
 char** argv_split (int ,char const*,int*) ;
 int create_trace_probe (int,char**) ;

__attribute__((used)) static int command_trace_probe(const char *buf)
{
 char **argv;
 int argc = 0, ret = 0;

 argv = argv_split(GFP_KERNEL, buf, &argc);
 if (!argv)
  return -ENOMEM;

 if (argc)
  ret = create_trace_probe(argc, argv);

 argv_free(argv);
 return ret;
}
