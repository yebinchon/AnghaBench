
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {size_t* subs; int len; } ;
struct lmodule {int flags; struct lmodule* path; int * handle; TYPE_2__* config; TYPE_1__ index; int section; } ;
struct TYPE_4__ {int (* init ) (struct lmodule*,int,char**) ;} ;


 scalar_t__ COMM_INITIALIZE ;
 int INSERT_OBJECT_OID (struct lmodule*,int *) ;
 int LM_ONSTARTLIST ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int MAX_MOD_ARGS ;
 int RTLD_GLOBAL ;
 int RTLD_NOW ;
 int TAILQ_INSERT_TAIL (int *,struct lmodule*,int ) ;
 int TAILQ_REMOVE (int *,struct lmodule*,int ) ;
 scalar_t__ community ;
 int dlclose (int *) ;
 int dlerror () ;
 int * dlopen (struct lmodule*,int) ;
 TYPE_2__* dlsym (int *,char*) ;
 int free (struct lmodule*) ;
 int link ;
 int lmodules ;
 struct lmodule* malloc (int) ;
 int modules_start ;
 int nprogargs ;
 char** progargs ;
 int start ;
 struct lmodule* strdup (char const*) ;
 int strlcpy (int ,char const*,int) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 int stub1 (struct lmodule*,int,char**) ;
 int syslog (int ,char*,...) ;

struct lmodule *
lm_load(const char *path, const char *section)
{
 struct lmodule *m;
 int err;
 int i;
 char *av[MAX_MOD_ARGS + 1];
 int ac;
 u_int u;

 if ((m = malloc(sizeof(*m))) == ((void*)0)) {
  syslog(LOG_ERR, "lm_load: %m");
  return (((void*)0));
 }
 m->handle = ((void*)0);
 m->flags = 0;
 strlcpy(m->section, section, sizeof(m->section));

 if ((m->path = strdup(path)) == ((void*)0)) {
  syslog(LOG_ERR, "lm_load: %m");
  goto err;
 }




 m->index.subs[0] = strlen(section);
 m->index.len = m->index.subs[0] + 1;
 for (u = 0; u < m->index.subs[0]; u++)
  m->index.subs[u + 1] = section[u];




 if ((m->handle = dlopen(m->path, RTLD_NOW|RTLD_GLOBAL)) == ((void*)0)) {
  syslog(LOG_ERR, "lm_load: open %s", dlerror());
  goto err;
 }

 if ((m->config = dlsym(m->handle, "config")) == ((void*)0)) {
  syslog(LOG_ERR, "lm_load: no 'config' symbol %s", dlerror());
  goto err;
 }




 INSERT_OBJECT_OID(m, &lmodules);


 if (community == COMM_INITIALIZE) {
  m->flags |= LM_ONSTARTLIST;
  TAILQ_INSERT_TAIL(&modules_start, m, start);
 }




 ac = 0;
 for (i = 0; i < nprogargs; i++) {
  if (strlen(progargs[i]) >= strlen(section) + 1 &&
      strncmp(progargs[i], section, strlen(section)) == 0 &&
      progargs[i][strlen(section)] == ':') {
   if (ac == MAX_MOD_ARGS) {
    syslog(LOG_WARNING, "too many arguments for "
        "module '%s", section);
    break;
   }
   av[ac++] = &progargs[i][strlen(section)+1];
  }
 }
 av[ac] = ((void*)0);




 if ((err = (*m->config->init)(m, ac, av)) != 0) {
  syslog(LOG_ERR, "lm_load: init failed: %d", err);
  TAILQ_REMOVE(&lmodules, m, link);
  goto err;
 }

 return (m);

  err:
 if ((m->flags & LM_ONSTARTLIST) != 0)
  TAILQ_REMOVE(&modules_start, m, start);
 if (m->handle)
  dlclose(m->handle);
 free(m->path);
 free(m);
 return (((void*)0));
}
