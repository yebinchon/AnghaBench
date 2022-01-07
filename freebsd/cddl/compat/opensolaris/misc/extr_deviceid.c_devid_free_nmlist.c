
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int devid_nmlist_t ;


 int free (int *) ;

void
devid_free_nmlist(devid_nmlist_t *list)
{

 free(list);
}
