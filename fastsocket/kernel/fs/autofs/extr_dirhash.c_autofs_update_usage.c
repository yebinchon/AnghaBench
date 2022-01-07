
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dirhash {int dummy; } ;
struct autofs_dir_ent {int dummy; } ;


 int autofs_delete_usage (struct autofs_dir_ent*) ;
 int autofs_init_usage (struct autofs_dirhash*,struct autofs_dir_ent*) ;

void autofs_update_usage(struct autofs_dirhash *dh,
    struct autofs_dir_ent *ent)
{
 autofs_delete_usage(ent);
 autofs_init_usage(dh,ent);
}
