
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int errno ;
 int execl (char*,char*,char*,int ,int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*) ;
 int strerror (int ) ;
 int warning (char*,char const*,int ) ;

__attribute__((used)) static void exec_man_cmd(const char *cmd, const char *page)
{
 struct strbuf shell_cmd = STRBUF_INIT;
 strbuf_addf(&shell_cmd, "%s %s", cmd, page);
 execl("/bin/sh", "sh", "-c", shell_cmd.buf, ((void*)0));
 warning("failed to exec '%s': %s", cmd, strerror(errno));
}
