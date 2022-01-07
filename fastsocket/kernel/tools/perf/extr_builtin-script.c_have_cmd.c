
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARSE_OPT_STOP_AT_NON_OPTION ;
 int free (char**) ;
 char** malloc (int) ;
 int memcpy (char**,char const**,int) ;
 int parse_options (int,char const**,int ,int *,int ) ;
 int pr_err (char*) ;
 int record_options ;
 int system_wide ;

__attribute__((used)) static int have_cmd(int argc, const char **argv)
{
 char **__argv = malloc(sizeof(const char *) * argc);

 if (!__argv) {
  pr_err("malloc failed\n");
  return -1;
 }

 memcpy(__argv, argv, sizeof(const char *) * argc);
 argc = parse_options(argc, (const char **)__argv, record_options,
        ((void*)0), PARSE_OPT_STOP_AT_NON_OPTION);
 free(__argv);

 system_wide = (argc == 0);

 return 0;
}
