
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char const*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;
 int usage (scalar_t__) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_hold (int *,char const*,char const*,scalar_t__,int) ;
 int * zfs_open (int ,char*,int) ;
 scalar_t__ zfs_release (int *,char const*,char const*,scalar_t__) ;

__attribute__((used)) static int
zfs_do_hold_rele_impl(int argc, char **argv, boolean_t holding)
{
 int errors = 0;
 int i;
 const char *tag;
 boolean_t recursive = B_FALSE;
 const char *opts = holding ? "rt" : "r";
 int c;


 while ((c = getopt(argc, argv, opts)) != -1) {
  switch (c) {
  case 'r':
   recursive = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 2)
  usage(B_FALSE);

 tag = argv[0];
 --argc;
 ++argv;

 if (holding && tag[0] == '.') {

  (void) fprintf(stderr, gettext("tag may not start with '.'\n"));
  usage(B_FALSE);
 }

 for (i = 0; i < argc; ++i) {
  zfs_handle_t *zhp;
  char parent[ZFS_MAX_DATASET_NAME_LEN];
  const char *delim;
  char *path = argv[i];

  delim = strchr(path, '@');
  if (delim == ((void*)0)) {
   (void) fprintf(stderr,
       gettext("'%s' is not a snapshot\n"), path);
   ++errors;
   continue;
  }
  (void) strncpy(parent, path, delim - path);
  parent[delim - path] = '\0';

  zhp = zfs_open(g_zfs, parent,
      ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
  if (zhp == ((void*)0)) {
   ++errors;
   continue;
  }
  if (holding) {
   if (zfs_hold(zhp, delim+1, tag, recursive, -1) != 0)
    ++errors;
  } else {
   if (zfs_release(zhp, delim+1, tag, recursive) != 0)
    ++errors;
  }
  zfs_close(zhp);
 }

 return (errors != 0);
}
