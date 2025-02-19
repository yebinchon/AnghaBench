
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kptr_restrict; } ;


 int F_OK ;
 size_t PATH_MAX ;
 char* VDSO__MAP_NAME ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ copyfile (char const*,char*) ;
 int free (char*) ;
 scalar_t__ link (char*,char*) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ mkdir_p (char*,int) ;
 int pr_debug (char*) ;
 char* realpath (char const*,int *) ;
 int scnprintf (char*,size_t const,char*,char const*,char const*,...) ;
 int snprintf (char*,size_t const,char*,char const*) ;
 int strlen (char const*) ;
 TYPE_1__ symbol_conf ;
 scalar_t__ symlink (char*,char*) ;
 char* zalloc (size_t const) ;

int build_id_cache__add_s(const char *sbuild_id, const char *debugdir,
     const char *name, bool is_kallsyms, bool is_vdso)
{
 const size_t size = PATH_MAX;
 char *realname, *filename = zalloc(size),
      *linkname = zalloc(size), *targetname;
 int len, err = -1;
 bool slash = is_kallsyms || is_vdso;

 if (is_kallsyms) {
  if (symbol_conf.kptr_restrict) {
   pr_debug("Not caching a kptr_restrict'ed /proc/kallsyms\n");
   return 0;
  }
  realname = (char *) name;
 } else
  realname = realpath(name, ((void*)0));

 if (realname == ((void*)0) || filename == ((void*)0) || linkname == ((void*)0))
  goto out_free;

 len = scnprintf(filename, size, "%s%s%s",
         debugdir, slash ? "/" : "",
         is_vdso ? VDSO__MAP_NAME : realname);
 if (mkdir_p(filename, 0755))
  goto out_free;

 snprintf(filename + len, size - len, "/%s", sbuild_id);

 if (access(filename, F_OK)) {
  if (is_kallsyms) {
    if (copyfile("/proc/kallsyms", filename))
    goto out_free;
  } else if (link(realname, filename) && copyfile(name, filename))
   goto out_free;
 }

 len = scnprintf(linkname, size, "%s/.build-id/%.2s",
         debugdir, sbuild_id);

 if (access(linkname, X_OK) && mkdir_p(linkname, 0755))
  goto out_free;

 snprintf(linkname + len, size - len, "/%s", sbuild_id + 2);
 targetname = filename + strlen(debugdir) - 5;
 memcpy(targetname, "../..", 5);

 if (symlink(targetname, linkname) == 0)
  err = 0;
out_free:
 if (!is_kallsyms)
  free(realname);
 free(filename);
 free(linkname);
 return err;
}
