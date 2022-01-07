
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_prop_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int zo_verbose; } ;


 int ASSERT0 (int) ;
 int ENOSPC ;
 int FTAG ;
 int MAXPATHLEN ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 int ZPROP_SRC_LOCAL ;
 int ZPROP_SRC_NONE ;
 int dsl_prop_get_integer (char*,char const*,int *,char*) ;
 int dsl_prop_set_int (char*,char const*,int ,int ) ;
 int printf (char*,char*,char const*,char const*,char*) ;
 scalar_t__ zfs_prop_index_to_string (int ,int ,char const**) ;
 char* zfs_prop_to_name (int ) ;
 TYPE_1__ ztest_opts ;
 int ztest_record_enospc (int ) ;

__attribute__((used)) static int
ztest_dsl_prop_set_uint64(char *osname, zfs_prop_t prop, uint64_t value,
    boolean_t inherit)
{
 const char *propname = zfs_prop_to_name(prop);
 const char *valname;
 char setpoint[MAXPATHLEN];
 uint64_t curval;
 int error;

 error = dsl_prop_set_int(osname, propname,
     (inherit ? ZPROP_SRC_NONE : ZPROP_SRC_LOCAL), value);

 if (error == ENOSPC) {
  ztest_record_enospc(FTAG);
  return (error);
 }
 ASSERT0(error);

 VERIFY0(dsl_prop_get_integer(osname, propname, &curval, setpoint));

 if (ztest_opts.zo_verbose >= 6) {
  VERIFY(zfs_prop_index_to_string(prop, curval, &valname) == 0);
  (void) printf("%s %s = %s at '%s'\n",
      osname, propname, valname, setpoint);
 }

 return (error);
}
