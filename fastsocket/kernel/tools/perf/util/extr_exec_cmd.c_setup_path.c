
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int add_path (struct strbuf*,int ) ;
 int argv0_path ;
 char* getenv (char*) ;
 int perf_exec_path () ;
 int setenv (char*,int ,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

void setup_path(void)
{
 const char *old_path = getenv("PATH");
 struct strbuf new_path = STRBUF_INIT;

 add_path(&new_path, perf_exec_path());
 add_path(&new_path, argv0_path);

 if (old_path)
  strbuf_addstr(&new_path, old_path);
 else
  strbuf_addstr(&new_path, "/usr/local/bin:/usr/bin:/bin");

 setenv("PATH", new_path.buf, 1);

 strbuf_release(&new_path);
}
