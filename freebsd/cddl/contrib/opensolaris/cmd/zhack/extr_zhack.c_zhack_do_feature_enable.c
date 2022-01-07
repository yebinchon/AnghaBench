
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* fi_uname; char* fi_desc; char* fi_guid; scalar_t__ fi_flags; int fi_feature; int * fi_depends; } ;
typedef TYPE_1__ zfeature_info_t ;
struct TYPE_9__ {int spa_feat_desc_obj; int * spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int spa_feature_t ;
typedef int objset_t ;


 int B_FALSE ;
 int FTAG ;
 int SPA_FEATURE_NONE ;
 int VERIFY0 (int ) ;
 scalar_t__ ZFEATURE_FLAG_READONLY_COMPAT ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dsl_sync_task (int ,int *,int ,TYPE_1__*,int,int ) ;
 int fatal (TYPE_2__*,int ,char*,...) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int spa_close (TYPE_2__*,int ) ;
 int spa_name (TYPE_2__*) ;
 int stderr ;
 char* strdup (char*) ;
 int usage () ;
 scalar_t__ zap_contains (int *,int ,char*) ;
 scalar_t__ zfeature_is_supported (char*) ;
 int zfeature_is_valid_guid (char*) ;
 int zhack_feature_enable_sync ;
 int zhack_spa_open (char*,int ,int ,TYPE_2__**) ;

__attribute__((used)) static void
zhack_do_feature_enable(int argc, char **argv)
{
 char c;
 char *desc, *target;
 spa_t *spa;
 objset_t *mos;
 zfeature_info_t feature;
 spa_feature_t nodeps[] = { SPA_FEATURE_NONE };





 desc = ((void*)0);
 feature.fi_uname = "zhack";
 feature.fi_flags = 0;
 feature.fi_depends = nodeps;
 feature.fi_feature = SPA_FEATURE_NONE;

 optind = 1;
 while ((c = getopt(argc, argv, "rmd:")) != -1) {
  switch (c) {
  case 'r':
   feature.fi_flags |= ZFEATURE_FLAG_READONLY_COMPAT;
   break;
  case 'd':
   desc = strdup(optarg);
   break;
  default:
   usage();
   break;
  }
 }

 if (desc == ((void*)0))
  desc = strdup("zhack injected");
 feature.fi_desc = desc;

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

 if (zfeature_is_supported(feature.fi_guid))
  fatal(spa, FTAG, "'%s' is a real feature, will not enable");
 if (0 == zap_contains(mos, spa->spa_feat_desc_obj, feature.fi_guid))
  fatal(spa, FTAG, "feature already enabled: %s",
      feature.fi_guid);

 VERIFY0(dsl_sync_task(spa_name(spa), ((void*)0),
     zhack_feature_enable_sync, &feature, 5, ZFS_SPACE_CHECK_NORMAL));

 spa_close(spa, FTAG);

 free(desc);
}
