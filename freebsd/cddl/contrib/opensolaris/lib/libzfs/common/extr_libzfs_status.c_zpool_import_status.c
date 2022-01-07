
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zpool_status_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 size_t NMSGID ;
 size_t check_status (int *,int ) ;
 char** zfs_msgid_table ;

zpool_status_t
zpool_import_status(nvlist_t *config, char **msgid)
{
 zpool_status_t ret = check_status(config, B_TRUE);

 if (ret >= NMSGID)
  *msgid = ((void*)0);
 else
  *msgid = zfs_msgid_table[ret];

 return (ret);
}
