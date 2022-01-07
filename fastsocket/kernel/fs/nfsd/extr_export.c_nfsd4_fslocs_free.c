
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_fs_locations {int locations_count; TYPE_1__* locations; } ;
struct TYPE_2__ {struct TYPE_2__* hosts; struct TYPE_2__* path; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void nfsd4_fslocs_free(struct nfsd4_fs_locations *fsloc)
{
 int i;

 for (i = 0; i < fsloc->locations_count; i++) {
  kfree(fsloc->locations[i].path);
  kfree(fsloc->locations[i].hosts);
 }
 kfree(fsloc->locations);
}
