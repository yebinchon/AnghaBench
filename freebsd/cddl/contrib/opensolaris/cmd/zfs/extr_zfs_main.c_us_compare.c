
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sc_prop; scalar_t__ sc_reverse; struct TYPE_4__* sc_next; } ;
typedef TYPE_1__ zfs_sort_column_t ;
typedef int zfs_prop_t ;
struct TYPE_5__ {scalar_t__ si_numname; TYPE_1__* si_sortcol; } ;
typedef TYPE_2__ us_sort_info_t ;
struct TYPE_6__ {int * usn_nvl; } ;
typedef TYPE_3__ us_node_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int ENOENT ;




 scalar_t__ nvlist_lookup_boolean_value (int *,char*,scalar_t__*) ;
 int nvlist_lookup_string (int *,char const*,char**) ;
 int nvlist_lookup_uint32 (int *,char const*,int *) ;
 int nvlist_lookup_uint64 (int *,char const*,int *) ;
 int strcmp (char*,char*) ;
 int us_populated ;

__attribute__((used)) static int
us_compare(const void *larg, const void *rarg, void *unused)
{
 const us_node_t *l = larg;
 const us_node_t *r = rarg;
 us_sort_info_t *si = (us_sort_info_t *)unused;
 zfs_sort_column_t *sortcol = si->si_sortcol;
 boolean_t numname = si->si_numname;
 nvlist_t *lnvl = l->usn_nvl;
 nvlist_t *rnvl = r->usn_nvl;
 int rc = 0;
 boolean_t lvb, rvb;

 for (; sortcol != ((void*)0); sortcol = sortcol->sc_next) {
  char *lvstr = "";
  char *rvstr = "";
  uint32_t lv32 = 0;
  uint32_t rv32 = 0;
  uint64_t lv64 = 0;
  uint64_t rv64 = 0;
  zfs_prop_t prop = sortcol->sc_prop;
  const char *propname = ((void*)0);
  boolean_t reverse = sortcol->sc_reverse;

  switch (prop) {
  case 129:
   propname = "type";
   (void) nvlist_lookup_uint32(lnvl, propname, &lv32);
   (void) nvlist_lookup_uint32(rnvl, propname, &rv32);
   if (rv32 != lv32)
    rc = (rv32 < lv32) ? 1 : -1;
   break;
  case 131:
   propname = "name";
   if (numname) {
compare_nums:
    (void) nvlist_lookup_uint64(lnvl, propname,
        &lv64);
    (void) nvlist_lookup_uint64(rnvl, propname,
        &rv64);
    if (rv64 != lv64)
     rc = (rv64 < lv64) ? 1 : -1;
   } else {
    if ((nvlist_lookup_string(lnvl, propname,
      &lvstr) == ENOENT) ||
        (nvlist_lookup_string(rnvl, propname,
      &rvstr) == ENOENT)) {
     goto compare_nums;
    }
    rc = strcmp(lvstr, rvstr);
   }
   break;
  case 128:
  case 130:
   if (!us_populated)
    break;
   if (prop == 128)
    propname = "used";
   else
    propname = "quota";
   (void) nvlist_lookup_uint64(lnvl, propname, &lv64);
   (void) nvlist_lookup_uint64(rnvl, propname, &rv64);
   if (rv64 != lv64)
    rc = (rv64 < lv64) ? 1 : -1;
   break;

  default:
   break;
  }

  if (rc != 0) {
   if (rc < 0)
    return (reverse ? 1 : -1);
   else
    return (reverse ? -1 : 1);
  }
 }






 if (nvlist_lookup_boolean_value(lnvl, "smbentity", &lvb) == 0 &&
     nvlist_lookup_boolean_value(rnvl, "smbentity", &rvb) == 0 &&
     lvb != rvb)
  return (lvb < rvb ? -1 : 1);

 return (0);
}
