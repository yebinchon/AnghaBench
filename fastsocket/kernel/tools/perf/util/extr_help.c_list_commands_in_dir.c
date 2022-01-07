
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct dirent {char const* d_name; } ;
struct cmdnames {int dummy; } ;
typedef int DIR ;


 struct strbuf STRBUF_INIT ;
 int add_cmdname (struct cmdnames*,char const*,int) ;
 int closedir (int *) ;
 scalar_t__ has_extension (char const*,char*) ;
 int is_executable (int ) ;
 int * opendir (char const*) ;
 scalar_t__ prefixcmp (char const*,char const*) ;
 struct dirent* readdir (int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void list_commands_in_dir(struct cmdnames *cmds,
      const char *path,
      const char *prefix)
{
 int prefix_len;
 DIR *dir = opendir(path);
 struct dirent *de;
 struct strbuf buf = STRBUF_INIT;
 int len;

 if (!dir)
  return;
 if (!prefix)
  prefix = "perf-";
 prefix_len = strlen(prefix);

 strbuf_addf(&buf, "%s/", path);
 len = buf.len;

 while ((de = readdir(dir)) != ((void*)0)) {
  int entlen;

  if (prefixcmp(de->d_name, prefix))
   continue;

  strbuf_setlen(&buf, len);
  strbuf_addstr(&buf, de->d_name);
  if (!is_executable(buf.buf))
   continue;

  entlen = strlen(de->d_name) - prefix_len;
  if (has_extension(de->d_name, ".exe"))
   entlen -= 4;

  add_cmdname(cmds, de->d_name + prefix_len, entlen);
 }
 closedir(dir);
 strbuf_release(&buf);
}
