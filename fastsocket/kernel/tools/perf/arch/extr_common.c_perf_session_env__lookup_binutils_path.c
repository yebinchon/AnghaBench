
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int machine; } ;
struct perf_session_env {int arch; } ;


 int F_OK ;
 scalar_t__ access (char*,int ) ;
 char** arm_triplets ;
 scalar_t__ asprintf (char**,char*,char const* const,char const*) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ lookup_path (char*) ;
 int lookup_triplets (char const* const*,char const*) ;
 char** mips_triplets ;
 char const* normalize_arch (int ) ;
 char** powerpc_triplets ;
 char** s390_triplets ;
 char** sh_triplets ;
 char** sparc_triplets ;
 int strcmp (char const*,char const*) ;
 int ui__error (char*,char const*,...) ;
 scalar_t__ uname (struct utsname*) ;
 char** x86_triplets ;

__attribute__((used)) static int perf_session_env__lookup_binutils_path(struct perf_session_env *env,
        const char *name,
        const char **path)
{
 int idx;
 const char *arch, *cross_env;
 struct utsname uts;
 const char *const *path_list;
 char *buf = ((void*)0);

 arch = normalize_arch(env->arch);

 if (uname(&uts) < 0)
  goto out;





 if (!strcmp(normalize_arch(uts.machine), arch))
  goto out;

 cross_env = getenv("CROSS_COMPILE");
 if (cross_env) {
  if (asprintf(&buf, "%s%s", cross_env, name) < 0)
   goto out_error;
  if (buf[0] == '/') {
   if (access(buf, F_OK) == 0)
    goto out;
   goto out_error;
  }
  if (lookup_path(buf))
   goto out;
  free(buf);
 }

 if (!strcmp(arch, "arm"))
  path_list = arm_triplets;
 else if (!strcmp(arch, "powerpc"))
  path_list = powerpc_triplets;
 else if (!strcmp(arch, "sh"))
  path_list = sh_triplets;
 else if (!strcmp(arch, "s390"))
  path_list = s390_triplets;
 else if (!strcmp(arch, "sparc"))
  path_list = sparc_triplets;
 else if (!strcmp(arch, "x86"))
  path_list = x86_triplets;
 else if (!strcmp(arch, "mips"))
  path_list = mips_triplets;
 else {
  ui__error("binutils for %s not supported.\n", arch);
  goto out_error;
 }

 idx = lookup_triplets(path_list, name);
 if (idx < 0) {
  ui__error("Please install %s for %s.\n"
     "You can add it to PATH, set CROSS_COMPILE or "
     "override the default using --%s.\n",
     name, arch, name);
  goto out_error;
 }

 if (asprintf(&buf, "%s%s", path_list[idx], name) < 0)
  goto out_error;

out:
 *path = buf;
 return 0;
out_error:
 free(buf);
 *path = ((void*)0);
 return -1;
}
