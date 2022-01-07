
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int zpool_boot_label_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ check_replication (int *,int *) ;
 int * construct_spec (int,char**) ;
 scalar_t__ is_device_in_use (int *,int *,int,int ,int ) ;
 int is_force ;
 scalar_t__ make_disks (int *,int *,int ,int ) ;
 int nvlist_free (int *) ;
 int * zpool_get_config (int *,int *) ;

nvlist_t *
make_root_vdev(zpool_handle_t *zhp, int force, int check_rep,
    boolean_t replacing, boolean_t dryrun, zpool_boot_label_t boot_type,
    uint64_t boot_size, int argc, char **argv)
{
 nvlist_t *newroot;
 nvlist_t *poolconfig = ((void*)0);
 is_force = force;






 if ((newroot = construct_spec(argc, argv)) == ((void*)0))
  return (((void*)0));

 if (zhp && ((poolconfig = zpool_get_config(zhp, ((void*)0))) == ((void*)0)))
  return (((void*)0));







 if (is_device_in_use(poolconfig, newroot, force, replacing, B_FALSE)) {
  nvlist_free(newroot);
  return (((void*)0));
 }






 if (check_rep && check_replication(poolconfig, newroot) != 0) {
  nvlist_free(newroot);
  return (((void*)0));
 }
 return (newroot);
}
