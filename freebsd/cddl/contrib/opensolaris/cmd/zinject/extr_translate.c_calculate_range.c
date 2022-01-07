
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zi_start; unsigned long long zi_end; int zi_object; int zi_level; } ;
typedef TYPE_1__ zinject_record_t ;
typedef int u_longlong_t ;
typedef int objset_t ;
typedef int err_type_t ;
struct TYPE_8__ {int dn_datablkshift; int dn_indblkshift; int dn_nlevels; } ;
typedef TYPE_2__ dnode_t ;
typedef int dnode_phys_t ;


 int B_TRUE ;
 TYPE_2__* DMU_META_DNODE (int *) ;
 int DMU_OST_ANY ;
 int FTAG ;
 int SPA_BLKPTRSHIFT ;


 int dmu_objset_disown (int *,int ) ;
 int dmu_objset_own (char const*,int ,int ,int ,int **) ;
 int dnode_hold (int *,int,int ,TYPE_2__**) ;
 int dnode_rele (TYPE_2__*,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int) ;
 void* strtoull (char*,char**,int) ;
 int ziprintf (char*,int,...) ;

__attribute__((used)) static int
calculate_range(const char *dataset, err_type_t type, int level, char *range,
    zinject_record_t *record)
{
 objset_t *os = ((void*)0);
 dnode_t *dn = ((void*)0);
 int err;
 int ret = -1;




 if (range == ((void*)0)) {





  record->zi_start = 0;
  record->zi_end = -1ULL;
 } else {
  char *end;


  record->zi_start = strtoull(range, &end, 10);


  if (*end == '\0')
   record->zi_end = record->zi_start + 1;
  else if (*end == ',')
   record->zi_end = strtoull(end + 1, &end, 10);

  if (*end != '\0') {
   (void) fprintf(stderr, "invalid range '%s': must be "
       "a numeric range of the form 'start[,end]'\n",
       range);
   goto out;
  }
 }

 switch (type) {
 case 129:
  break;

 case 128:






  if (range != ((void*)0)) {
   (void) fprintf(stderr, "range cannot be specified when "
       "type is 'dnode'\n");
   goto out;
  }

  record->zi_start = record->zi_object * sizeof (dnode_phys_t);
  record->zi_end = record->zi_start + sizeof (dnode_phys_t);
  record->zi_object = 0;
  break;
 }





 if ((err = dmu_objset_own(dataset, DMU_OST_ANY,
     B_TRUE, FTAG, &os)) != 0) {
  (void) fprintf(stderr, "cannot open dataset '%s': %s\n",
      dataset, strerror(err));
  goto out;
 }

 if (record->zi_object == 0) {
  dn = DMU_META_DNODE(os);
 } else {
  err = dnode_hold(os, record->zi_object, FTAG, &dn);
  if (err != 0) {
   (void) fprintf(stderr, "failed to hold dnode "
       "for object %llu\n",
       (u_longlong_t)record->zi_object);
   goto out;
  }
 }


 ziprintf("data shift: %d\n", (int)dn->dn_datablkshift);
 ziprintf(" ind shift: %d\n", (int)dn->dn_indblkshift);




 if (record->zi_start != 0 || record->zi_end != -1ULL) {
  record->zi_start >>= dn->dn_datablkshift;
  record->zi_end >>= dn->dn_datablkshift;
 }





 record->zi_level = level;
 if (level > 0) {
  ziprintf("level 0 blkid range: [%llu, %llu]\n",
      record->zi_start, record->zi_end);

  if (level >= dn->dn_nlevels) {
   (void) fprintf(stderr, "level %d exceeds max level "
       "of object (%d)\n", level, dn->dn_nlevels - 1);
   goto out;
  }

  if (record->zi_start != 0 || record->zi_end != 0) {
   int shift = dn->dn_indblkshift - SPA_BLKPTRSHIFT;

   for (; level > 0; level--) {
    record->zi_start >>= shift;
    record->zi_end >>= shift;
   }
  }
 }

 ret = 0;
out:
 if (dn) {
  if (dn != DMU_META_DNODE(os))
   dnode_rele(dn, FTAG);
 }
 if (os)
  dmu_objset_disown(os, FTAG);

 return (ret);
}
