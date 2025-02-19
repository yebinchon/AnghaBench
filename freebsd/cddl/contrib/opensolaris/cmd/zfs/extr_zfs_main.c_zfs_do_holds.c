
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_3__ {char const* cb_snapname; int cb_max_taglen; int cb_max_namelen; int ** cb_nvlp; scalar_t__ cb_recursive; int member_0; } ;
typedef TYPE_1__ holds_cbdata_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int NV_UNIQUE_NAME ;
 int ZFS_ITER_RECURSE ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZFS_TYPE_VOLUME ;
 int fprintf (int ,char*,int) ;
 int getopt (int,char**,char const*) ;
 char* gettext (char*) ;
 int holds_callback ;
 int nomem () ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 int optarg ;
 scalar_t__ optind ;
 int optopt ;
 int parse_depth (int ,int*) ;
 int print_holds (scalar_t__,scalar_t__,int ,int ,int *) ;
 int printf (char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int usage (scalar_t__) ;
 int zfs_for_each (int,char**,int,int,int *,int *,int,int ,TYPE_1__*) ;

__attribute__((used)) static int
zfs_do_holds(int argc, char **argv)
{
 int errors = 0;
 int c;
 int i;
 boolean_t scripted = B_FALSE;
 boolean_t literal = B_FALSE;
 boolean_t recursive = B_FALSE;
 const char *opts = "d:rHp";
 nvlist_t *nvl;

 int types = ZFS_TYPE_SNAPSHOT;
 holds_cbdata_t cb = { 0 };

 int limit = 0;
 int ret = 0;
 int flags = 0;


 while ((c = getopt(argc, argv, opts)) != -1) {
  switch (c) {
  case 'd':
   limit = parse_depth(optarg, &flags);
   recursive = B_TRUE;
   break;
  case 'r':
   recursive = B_TRUE;
   break;
  case 'H':
   scripted = B_TRUE;
   break;
  case 'p':
   literal = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 if (recursive) {
  types |= ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME;
  flags |= ZFS_ITER_RECURSE;
 }

 argc -= optind;
 argv += optind;


 if (argc < 1)
  usage(B_FALSE);

 if (nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0) != 0)
  nomem();

 for (i = 0; i < argc; ++i) {
  char *snapshot = argv[i];
  const char *delim;
  const char *snapname = ((void*)0);

  delim = strchr(snapshot, '@');
  if (delim != ((void*)0)) {
   snapname = delim + 1;
   if (recursive)
    snapshot[delim - snapshot] = '\0';
  }

  cb.cb_recursive = recursive;
  cb.cb_snapname = snapname;
  cb.cb_nvlp = &nvl;




  ret = zfs_for_each(argc, argv, flags, types, ((void*)0), ((void*)0), limit,
      holds_callback, &cb);
  if (ret != 0)
   ++errors;
 }




 print_holds(scripted, literal, cb.cb_max_namelen, cb.cb_max_taglen,
     nvl);

 if (nvlist_empty(nvl))
  (void) printf(gettext("no datasets available\n"));

 nvlist_free(nvl);

 return (0 != errors);
}
