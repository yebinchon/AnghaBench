
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 void* B_TRUE ;
 int NV_UNIQUE_NAME ;
 int VDEV_TYPE_L2CACHE ;
 int VDEV_TYPE_LOG ;
 int VDEV_TYPE_MIRROR ;
 int VDEV_TYPE_RAIDZ ;
 char const* VDEV_TYPE_ROOT ;
 int VDEV_TYPE_SPARE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_NPARITY ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_TYPE ;
 int fprintf (int ,char*,...) ;
 int free (int **) ;
 char* gettext (char*) ;
 char* is_grouping (char*,int*,int*) ;
 int * make_leaf_vdev (char*,int) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,int) ;
 scalar_t__ nvlist_add_string (int *,int ,char const*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int ** realloc (int **,int) ;
 int stderr ;
 scalar_t__ strcmp (char const*,int ) ;
 int verify (int) ;
 int zpool_no_memory () ;

nvlist_t *
construct_spec(int argc, char **argv)
{
 nvlist_t *nvroot, *nv, **top, **spares, **l2cache;
 int t, toplevels, mindev, maxdev, nspares, nlogs, nl2cache;
 const char *type;
 uint64_t is_log;
 boolean_t seen_logs;

 top = ((void*)0);
 toplevels = 0;
 spares = ((void*)0);
 l2cache = ((void*)0);
 nspares = 0;
 nlogs = 0;
 nl2cache = 0;
 is_log = B_FALSE;
 seen_logs = B_FALSE;

 while (argc > 0) {
  nv = ((void*)0);





  if ((type = is_grouping(argv[0], &mindev, &maxdev)) != ((void*)0)) {
   nvlist_t **child = ((void*)0);
   int c, children = 0;

   if (strcmp(type, VDEV_TYPE_SPARE) == 0) {
    if (spares != ((void*)0)) {
     (void) fprintf(stderr,
         gettext("invalid vdev "
         "specification: 'spare' can be "
         "specified only once\n"));
     return (((void*)0));
    }
    is_log = B_FALSE;
   }

   if (strcmp(type, VDEV_TYPE_LOG) == 0) {
    if (seen_logs) {
     (void) fprintf(stderr,
         gettext("invalid vdev "
         "specification: 'log' can be "
         "specified only once\n"));
     return (((void*)0));
    }
    seen_logs = B_TRUE;
    is_log = B_TRUE;
    argc--;
    argv++;




    continue;
   }

   if (strcmp(type, VDEV_TYPE_L2CACHE) == 0) {
    if (l2cache != ((void*)0)) {
     (void) fprintf(stderr,
         gettext("invalid vdev "
         "specification: 'cache' can be "
         "specified only once\n"));
     return (((void*)0));
    }
    is_log = B_FALSE;
   }

   if (is_log) {
    if (strcmp(type, VDEV_TYPE_MIRROR) != 0) {
     (void) fprintf(stderr,
         gettext("invalid vdev "
         "specification: unsupported 'log' "
         "device: %s\n"), type);
     return (((void*)0));
    }
    nlogs++;
   }

   for (c = 1; c < argc; c++) {
    if (is_grouping(argv[c], ((void*)0), ((void*)0)) != ((void*)0))
     break;
    children++;
    child = realloc(child,
        children * sizeof (nvlist_t *));
    if (child == ((void*)0))
     zpool_no_memory();
    if ((nv = make_leaf_vdev(argv[c], B_FALSE))
        == ((void*)0))
     return (((void*)0));
    child[children - 1] = nv;
   }

   if (children < mindev) {
    (void) fprintf(stderr, gettext("invalid vdev "
        "specification: %s requires at least %d "
        "devices\n"), argv[0], mindev);
    return (((void*)0));
   }

   if (children > maxdev) {
    (void) fprintf(stderr, gettext("invalid vdev "
        "specification: %s supports no more than "
        "%d devices\n"), argv[0], maxdev);
    return (((void*)0));
   }

   argc -= c;
   argv += c;

   if (strcmp(type, VDEV_TYPE_SPARE) == 0) {
    spares = child;
    nspares = children;
    continue;
   } else if (strcmp(type, VDEV_TYPE_L2CACHE) == 0) {
    l2cache = child;
    nl2cache = children;
    continue;
   } else {
    verify(nvlist_alloc(&nv, NV_UNIQUE_NAME,
        0) == 0);
    verify(nvlist_add_string(nv, ZPOOL_CONFIG_TYPE,
        type) == 0);
    verify(nvlist_add_uint64(nv,
        ZPOOL_CONFIG_IS_LOG, is_log) == 0);
    if (strcmp(type, VDEV_TYPE_RAIDZ) == 0) {
     verify(nvlist_add_uint64(nv,
         ZPOOL_CONFIG_NPARITY,
         mindev - 1) == 0);
    }
    verify(nvlist_add_nvlist_array(nv,
        ZPOOL_CONFIG_CHILDREN, child,
        children) == 0);

    for (c = 0; c < children; c++)
     nvlist_free(child[c]);
    free(child);
   }
  } else {




   if ((nv = make_leaf_vdev(argv[0], is_log)) == ((void*)0))
    return (((void*)0));
   if (is_log)
    nlogs++;
   argc--;
   argv++;
  }

  toplevels++;
  top = realloc(top, toplevels * sizeof (nvlist_t *));
  if (top == ((void*)0))
   zpool_no_memory();
  top[toplevels - 1] = nv;
 }

 if (toplevels == 0 && nspares == 0 && nl2cache == 0) {
  (void) fprintf(stderr, gettext("invalid vdev "
      "specification: at least one toplevel vdev must be "
      "specified\n"));
  return (((void*)0));
 }

 if (seen_logs && nlogs == 0) {
  (void) fprintf(stderr, gettext("invalid vdev specification: "
      "log requires at least 1 device\n"));
  return (((void*)0));
 }




 verify(nvlist_alloc(&nvroot, NV_UNIQUE_NAME, 0) == 0);
 verify(nvlist_add_string(nvroot, ZPOOL_CONFIG_TYPE,
     VDEV_TYPE_ROOT) == 0);
 verify(nvlist_add_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     top, toplevels) == 0);
 if (nspares != 0)
  verify(nvlist_add_nvlist_array(nvroot, ZPOOL_CONFIG_SPARES,
      spares, nspares) == 0);
 if (nl2cache != 0)
  verify(nvlist_add_nvlist_array(nvroot, ZPOOL_CONFIG_L2CACHE,
      l2cache, nl2cache) == 0);

 for (t = 0; t < toplevels; t++)
  nvlist_free(top[t]);
 for (t = 0; t < nspares; t++)
  nvlist_free(spares[t]);
 for (t = 0; t < nl2cache; t++)
  nvlist_free(l2cache[t]);
 if (spares)
  free(spares);
 if (l2cache)
  free(l2cache);
 free(top);

 return (nvroot);
}
