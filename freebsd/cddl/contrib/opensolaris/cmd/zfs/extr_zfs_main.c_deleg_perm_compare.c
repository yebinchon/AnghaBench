
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp_name; } ;
struct TYPE_4__ {TYPE_1__ dpn_perm; } ;
typedef TYPE_2__ deleg_perm_node_t ;


 scalar_t__ ZFS_MAX_DELEG_NAME ;
 int strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
deleg_perm_compare(const void *larg, const void *rarg, void *unused)
{
 const deleg_perm_node_t *l = larg;
 const deleg_perm_node_t *r = rarg;
 int res = strncmp(l->dpn_perm.dp_name, r->dpn_perm.dp_name,
     ZFS_MAX_DELEG_NAME-1);

 if (res == 0)
  return (0);

 if (res > 0)
  return (1);
 else
  return (-1);
}
