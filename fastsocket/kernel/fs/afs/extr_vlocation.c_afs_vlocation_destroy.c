
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vlocation {int cell; int cache; } ;


 int _enter (char*,struct afs_vlocation*) ;
 int afs_put_cell (int ) ;
 int fscache_relinquish_cookie (int ,int ) ;
 int kfree (struct afs_vlocation*) ;

__attribute__((used)) static void afs_vlocation_destroy(struct afs_vlocation *vl)
{
 _enter("%p", vl);




 afs_put_cell(vl->cell);
 kfree(vl);
}
