
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int un_mountp; } ;
typedef TYPE_1__ unshare_unmount_node_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
unshare_unmount_compare(const void *larg, const void *rarg, void *unused)
{
 const unshare_unmount_node_t *l = larg;
 const unshare_unmount_node_t *r = rarg;

 return (strcmp(l->un_mountp, r->un_mountp));
}
