
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * zn_handle; } ;
typedef TYPE_1__ zpool_node_t ;
typedef int zpool_handle_t ;


 int strcmp (char const*,char const*) ;
 char* zpool_get_name (int *) ;

__attribute__((used)) static int
zpool_compare(const void *larg, const void *rarg, void *unused)
{
 zpool_handle_t *l = ((zpool_node_t *)larg)->zn_handle;
 zpool_handle_t *r = ((zpool_node_t *)rarg)->zn_handle;
 const char *lname = zpool_get_name(l);
 const char *rname = zpool_get_name(r);

 return (strcmp(lname, rname));
}
