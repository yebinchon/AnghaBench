
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* fi_uname; char* fi_guid; int fi_flags; int fi_feature; int * fi_depends; int * fi_desc; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_11__ {int spa_feat_for_write_obj; int spa_feat_for_read_obj; int * spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int spa_feature_t ;
typedef int objset_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int FTAG ;
 int SPA_FEATURE_NONE ;
 int VERIFY0 (int ) ;
 int ZFEATURE_FLAG_MOS ;
 int ZFEATURE_FLAG_READONLY_COMPAT ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_sync_task (int ,int *,int ,TYPE_1__*,int,int ) ;
 int fatal (TYPE_2__*,int ,char*,...) ;
 int feature_decr_sync ;
 scalar_t__ feature_get_refcount_from_disk (TYPE_2__*,TYPE_1__*,scalar_t__*) ;
 int feature_incr_sync ;
 int fprintf (int ,char*) ;
 char getopt (int,char**,char*) ;
 int optind ;
 int spa_close (TYPE_2__*,int ) ;
 int spa_name (TYPE_2__*) ;
 int stderr ;
 int usage () ;
 scalar_t__ zap_contains (int *,int ,char*) ;
 scalar_t__ zfeature_is_supported (char*) ;
 int zfeature_is_valid_guid (char*) ;
 int zhack_spa_open (char*,scalar_t__,int ,TYPE_2__**) ;

__attribute__((used)) static void
zhack_do_feature_ref(int argc, char **argv)
{
 char c;
 char *target;
 boolean_t decr = B_FALSE;
 spa_t *spa;
 objset_t *mos;
 zfeature_info_t feature;
 spa_feature_t nodeps[] = { SPA_FEATURE_NONE };







 feature.fi_uname = "zhack";
 feature.fi_flags = 0;
 feature.fi_desc = ((void*)0);
 feature.fi_depends = nodeps;
 feature.fi_feature = SPA_FEATURE_NONE;

 optind = 1;
 while ((c = getopt(argc, argv, "md")) != -1) {
  switch (c) {
  case 'm':
   feature.fi_flags |= ZFEATURE_FLAG_MOS;
   break;
  case 'd':
   decr = B_TRUE;
   break;
  default:
   usage();
   break;
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 2) {
  (void) fprintf(stderr, "error: missing feature or pool name\n");
  usage();
 }
 target = argv[0];
 feature.fi_guid = argv[1];

 if (!zfeature_is_valid_guid(feature.fi_guid))
  fatal(((void*)0), FTAG, "invalid feature guid: %s", feature.fi_guid);

 zhack_spa_open(target, B_FALSE, FTAG, &spa);
 mos = spa->spa_meta_objset;

 if (zfeature_is_supported(feature.fi_guid)) {
  fatal(spa, FTAG,
      "'%s' is a real feature, will not change refcount");
 }

 if (0 == zap_contains(mos, spa->spa_feat_for_read_obj,
     feature.fi_guid)) {
  feature.fi_flags &= ~ZFEATURE_FLAG_READONLY_COMPAT;
 } else if (0 == zap_contains(mos, spa->spa_feat_for_write_obj,
     feature.fi_guid)) {
  feature.fi_flags |= ZFEATURE_FLAG_READONLY_COMPAT;
 } else {
  fatal(spa, FTAG, "feature is not enabled: %s", feature.fi_guid);
 }

 if (decr) {
  uint64_t count;
  if (feature_get_refcount_from_disk(spa, &feature,
      &count) == 0 && count != 0) {
   fatal(spa, FTAG, "feature refcount already 0: %s",
       feature.fi_guid);
  }
 }

 VERIFY0(dsl_sync_task(spa_name(spa), ((void*)0),
     decr ? feature_decr_sync : feature_incr_sync, &feature,
     5, ZFS_SPACE_CHECK_NORMAL));

 spa_close(spa, FTAG);
}
