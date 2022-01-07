
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t zpool_status_t ;
struct TYPE_3__ {int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;


 int B_FALSE ;
 size_t NMSGID ;
 size_t check_status (int ,int ) ;
 char** zfs_msgid_table ;

zpool_status_t
zpool_get_status(zpool_handle_t *zhp, char **msgid)
{
 zpool_status_t ret = check_status(zhp->zpool_config, B_FALSE);

 if (ret >= NMSGID)
  *msgid = ((void*)0);
 else
  *msgid = zfs_msgid_table[ret];

 return (ret);
}
