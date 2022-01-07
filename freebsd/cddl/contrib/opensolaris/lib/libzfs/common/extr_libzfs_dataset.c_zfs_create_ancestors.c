
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;
typedef int errbuf ;


 int B_TRUE ;
 int EZFS_INVALIDNAME ;
 int TEXT_DOMAIN ;
 scalar_t__ check_parents (int *,char const*,int *,int ,int*) ;
 int create_parents (int *,char*,int) ;
 scalar_t__ dataset_nestcheck (char const*) ;
 char* dgettext (int ,char*) ;
 int free (char*) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strdup (char const*) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;

int
zfs_create_ancestors(libzfs_handle_t *hdl, const char *path)
{
 int prefix;
 char *path_copy;
 char errbuf[1024];
 int rc = 0;

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot create '%s'"), path);





 if (dataset_nestcheck(path) != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "maximum name nesting depth exceeded"));
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));
 }

 if (check_parents(hdl, path, ((void*)0), B_TRUE, &prefix) != 0)
  return (-1);

 if ((path_copy = strdup(path)) != ((void*)0)) {
  rc = create_parents(hdl, path_copy, prefix);
  free(path_copy);
 }
 if (path_copy == ((void*)0) || rc != 0)
  return (-1);

 return (0);
}
