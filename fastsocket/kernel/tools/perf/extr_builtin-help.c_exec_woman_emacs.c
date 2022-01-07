
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int check_emacsclient_version () ;
 int errno ;
 int execlp (char const*,char*,char*,int ,int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strerror (int ) ;
 int warning (char*,char const*,int ) ;

__attribute__((used)) static void exec_woman_emacs(const char *path, const char *page)
{
 if (!check_emacsclient_version()) {

  struct strbuf man_page = STRBUF_INIT;

  if (!path)
   path = "emacsclient";
  strbuf_addf(&man_page, "(woman \"%s\")", page);
  execlp(path, "emacsclient", "-e", man_page.buf, ((void*)0));
  warning("failed to exec '%s': %s", path, strerror(errno));
 }
}
