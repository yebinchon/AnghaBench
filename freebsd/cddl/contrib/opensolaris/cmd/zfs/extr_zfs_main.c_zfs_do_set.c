
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int B_FALSE ;
 int NV_UNIQUE_NAME ;
 int ZFS_TYPE_DATASET ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int nomem () ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int parseprop (int *,char*) ;
 int set_callback ;
 int stderr ;
 int * strchr (char*,char) ;
 int usage (int ) ;
 int zfs_for_each (int,char**,int ,int ,int *,int *,int ,int ,int *) ;

__attribute__((used)) static int
zfs_do_set(int argc, char **argv)
{
 nvlist_t *props = ((void*)0);
 int ds_start = -1;
 int ret = 0;


 if (argc > 1 && argv[1][0] == '-') {
  (void) fprintf(stderr, gettext("invalid option '%c'\n"),
      argv[1][1]);
  usage(B_FALSE);
 }


 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing arguments\n"));
  usage(B_FALSE);
 }
 if (argc < 3) {
  if (strchr(argv[1], '=') == ((void*)0)) {
   (void) fprintf(stderr, gettext("missing property=value "
       "argument(s)\n"));
  } else {
   (void) fprintf(stderr, gettext("missing dataset "
       "name(s)\n"));
  }
  usage(B_FALSE);
 }


 for (int i = 1; i < argc; i++) {
  if (strchr(argv[i], '=') != ((void*)0)) {
   if (ds_start > 0) {

    (void) fprintf(stderr, gettext("invalid "
        "argument order\n"), i);
    usage(B_FALSE);
   }
  } else if (ds_start < 0) {
   ds_start = i;
  }
 }
 if (ds_start < 0) {
  (void) fprintf(stderr, gettext("missing dataset name(s)\n"));
  usage(B_FALSE);
 }


 if (nvlist_alloc(&props, NV_UNIQUE_NAME, 0) != 0)
  nomem();
 for (int i = 1; i < ds_start; i++) {
  if ((ret = parseprop(props, argv[i])) != 0)
   goto error;
 }

 ret = zfs_for_each(argc - ds_start, argv + ds_start, 0,
     ZFS_TYPE_DATASET, ((void*)0), ((void*)0), 0, set_callback, props);

error:
 nvlist_free(props);
 return (ret);
}
