
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint_t ;
typedef unsigned long long uint64_t ;
struct stat64 {scalar_t__ st_size; } ;
struct TYPE_5__ {char* zprl_type; int zprl_children; unsigned long long zprl_parity; int member_0; } ;
typedef TYPE_1__ replication_level_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 unsigned long long B_FALSE ;
 int B_TRUE ;
 scalar_t__ MAXOFFSET_T ;
 int O_RDONLY ;
 char* VDEV_TYPE_RAIDZ ;
 char* VDEV_TYPE_REPLACING ;
 char* VDEV_TYPE_SPARE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_NPARITY ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_TYPE ;
 scalar_t__ ZPOOL_FUZZ ;
 int assert (int) ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int fstat64 (int,struct stat64*) ;
 int gettext (char*) ;
 scalar_t__ labs (unsigned long long) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,unsigned long long*) ;
 int open (char*,int ) ;
 TYPE_1__* safe_malloc (int) ;
 int stat64 (char*,struct stat64*) ;
 scalar_t__ strcmp (char*,char*) ;
 int vdev_error (int ,...) ;
 int verify (int) ;

__attribute__((used)) static replication_level_t *
get_replication(nvlist_t *nvroot, boolean_t fatal)
{
 nvlist_t **top;
 uint_t t, toplevels;
 nvlist_t **child;
 uint_t c, children;
 nvlist_t *nv;
 char *type;
 replication_level_t lastrep = {0};
 replication_level_t rep;
 replication_level_t *ret;
 boolean_t dontreport;

 ret = safe_malloc(sizeof (replication_level_t));

 verify(nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     &top, &toplevels) == 0);

 for (t = 0; t < toplevels; t++) {
  uint64_t is_log = B_FALSE;

  nv = top[t];





  (void) nvlist_lookup_uint64(nv, ZPOOL_CONFIG_IS_LOG, &is_log);
  if (is_log)
   continue;

  verify(nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE,
      &type) == 0);
  if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
      &child, &children) != 0) {



   rep.zprl_type = type;
   rep.zprl_children = 1;
   rep.zprl_parity = 0;
  } else {
   uint64_t vdev_size;
   rep.zprl_type = type;
   rep.zprl_children = 0;

   if (strcmp(type, VDEV_TYPE_RAIDZ) == 0) {
    verify(nvlist_lookup_uint64(nv,
        ZPOOL_CONFIG_NPARITY,
        &rep.zprl_parity) == 0);
    assert(rep.zprl_parity != 0);
   } else {
    rep.zprl_parity = 0;
   }






   type = ((void*)0);
   dontreport = 0;
   vdev_size = -1ULL;
   for (c = 0; c < children; c++) {
    boolean_t is_replacing, is_spare;
    nvlist_t *cnv = child[c];
    char *path;
    struct stat64 statbuf;
    uint64_t size = -1ULL;
    char *childtype;
    int fd, err;

    rep.zprl_children++;

    verify(nvlist_lookup_string(cnv,
        ZPOOL_CONFIG_TYPE, &childtype) == 0);





    is_replacing = strcmp(childtype,
        VDEV_TYPE_REPLACING) == 0;
    is_spare = strcmp(childtype,
        VDEV_TYPE_SPARE) == 0;
    if (is_replacing || is_spare) {
     nvlist_t **rchild;
     uint_t rchildren;

     verify(nvlist_lookup_nvlist_array(cnv,
         ZPOOL_CONFIG_CHILDREN, &rchild,
         &rchildren) == 0);
     assert((is_replacing && rchildren == 2)
         || (is_spare && rchildren >= 2));
     cnv = rchild[0];

     verify(nvlist_lookup_string(cnv,
         ZPOOL_CONFIG_TYPE,
         &childtype) == 0);
     if (strcmp(childtype,
         VDEV_TYPE_SPARE) == 0) {




      verify(
          nvlist_lookup_nvlist_array(
       cnv,
       ZPOOL_CONFIG_CHILDREN,
       &rchild,
          &rchildren) == 0);
      assert(rchildren >= 2);
      cnv = rchild[0];
     }
    }

    verify(nvlist_lookup_string(cnv,
        ZPOOL_CONFIG_PATH, &path) == 0);





    if (!dontreport && type != ((void*)0) &&
        strcmp(type, childtype) != 0) {
     if (ret != ((void*)0))
      free(ret);
     ret = ((void*)0);
     if (fatal)
      vdev_error(gettext(
          "mismatched replication "
          "level: %s contains both "
          "files and devices\n"),
          rep.zprl_type);
     else
      return (((void*)0));
     dontreport = B_TRUE;
    }
    if ((fd = open(path, O_RDONLY)) >= 0) {
     err = fstat64(fd, &statbuf);
     (void) close(fd);
    } else {
     err = stat64(path, &statbuf);
    }

    if (err != 0 ||
        statbuf.st_size == 0 ||
        statbuf.st_size == MAXOFFSET_T)
     continue;

    size = statbuf.st_size;







    if (!dontreport &&
        (vdev_size != -1ULL &&
        (labs(size - vdev_size) >
        ZPOOL_FUZZ))) {
     if (ret != ((void*)0))
      free(ret);
     ret = ((void*)0);
     if (fatal)
      vdev_error(gettext(
          "%s contains devices of "
          "different sizes\n"),
          rep.zprl_type);
     else
      return (((void*)0));
     dontreport = B_TRUE;
    }

    type = childtype;
    vdev_size = size;
   }
  }






  if (lastrep.zprl_type != ((void*)0)) {
   if (strcmp(lastrep.zprl_type, rep.zprl_type) != 0) {
    if (ret != ((void*)0))
     free(ret);
    ret = ((void*)0);
    if (fatal)
     vdev_error(gettext(
         "mismatched replication level: "
         "both %s and %s vdevs are "
         "present\n"),
         lastrep.zprl_type, rep.zprl_type);
    else
     return (((void*)0));
   } else if (lastrep.zprl_parity != rep.zprl_parity) {
    if (ret)
     free(ret);
    ret = ((void*)0);
    if (fatal)
     vdev_error(gettext(
         "mismatched replication level: "
         "both %llu and %llu device parity "
         "%s vdevs are present\n"),
         lastrep.zprl_parity,
         rep.zprl_parity,
         rep.zprl_type);
    else
     return (((void*)0));
   } else if (lastrep.zprl_children != rep.zprl_children) {
    if (ret)
     free(ret);
    ret = ((void*)0);
    if (fatal)
     vdev_error(gettext(
         "mismatched replication level: "
         "both %llu-way and %llu-way %s "
         "vdevs are present\n"),
         lastrep.zprl_children,
         rep.zprl_children,
         rep.zprl_type);
    else
     return (((void*)0));
   }
  }
  lastrep = rep;
 }

 if (ret != ((void*)0))
  *ret = rep;

 return (ret);
}
