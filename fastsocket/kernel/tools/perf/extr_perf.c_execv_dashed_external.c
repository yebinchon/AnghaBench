
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 int ENOENT ;
 int ERR_RUN_COMMAND_EXEC ;
 scalar_t__ IS_RUN_COMMAND_ERR (int) ;
 struct strbuf STRBUF_INIT ;
 int die (char*,char const*) ;
 int errno ;
 int exit (int) ;
 int run_command_v_opt (char const**,int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void execv_dashed_external(const char **argv)
{
 struct strbuf cmd = STRBUF_INIT;
 const char *tmp;
 int status;

 strbuf_addf(&cmd, "perf-%s", argv[0]);







 tmp = argv[0];
 argv[0] = cmd.buf;





 status = run_command_v_opt(argv, 0);
 if (status != -ERR_RUN_COMMAND_EXEC) {
  if (IS_RUN_COMMAND_ERR(status))
   die("unable to run '%s'", argv[0]);
  exit(-status);
 }
 errno = ENOENT;

 argv[0] = tmp;

 strbuf_release(&cmd);
}
