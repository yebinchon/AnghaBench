
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opaque_t ;
typedef int am_node ;


 int STREQ (char*,char*) ;
 int VLOOK_CREATE ;
 int XLOG_ERROR ;
 int * amfs_generic_lookup_child (int ,char*,int*,int ) ;
 int amfs_generic_mount_child (int *,int*) ;
 int errno ;
 int plog (int ,char*,char*) ;

__attribute__((used)) static int
create_amfs_union_node(char *dir, opaque_t arg)
{
  if (!STREQ(dir, "/defaults")) {
    int error = 0;
    am_node *am;
    am = amfs_generic_lookup_child(arg, dir, &error, VLOOK_CREATE);
    if (am && error < 0)
      (void)amfs_generic_mount_child(am, &error);
    if (error > 0) {
      errno = error;
      plog(XLOG_ERROR, "unionfs: could not mount %s: %m", dir);
    }
    return error;
  }
  return 0;
}
