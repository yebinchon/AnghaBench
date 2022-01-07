
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int errno ;
 int execlp (char const*,char const*,char*,int ,int *) ;
 char* getenv (char*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 int strerror (int ) ;
 void* strrchr (char const*,char) ;
 int warning (char*,char const*,int ) ;

__attribute__((used)) static void exec_man_konqueror(const char *path, const char *page)
{
 const char *display = getenv("DISPLAY");
 if (display && *display) {
  struct strbuf man_page = STRBUF_INIT;
  const char *filename = "kfmclient";


  if (path) {
   const char *file = strrchr(path, '/');
   if (file && !strcmp(file + 1, "konqueror")) {
    char *new = strdup(path);
    char *dest = strrchr(new, '/');


    strcpy(dest + 1, "kfmclient");
    path = new;
   }
   if (file)
    filename = file;
  } else
   path = "kfmclient";
  strbuf_addf(&man_page, "man:%s(1)", page);
  execlp(path, filename, "newTab", man_page.buf, ((void*)0));
  warning("failed to exec '%s': %s", path, strerror(errno));
 }
}
