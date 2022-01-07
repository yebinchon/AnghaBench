
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dirhash {int expiry_head; } ;
struct autofs_dir_ent {int last_usage; int exp; } ;


 int jiffies ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void autofs_init_usage(struct autofs_dirhash *dh,
         struct autofs_dir_ent *ent)
{
 list_add_tail(&ent->exp, &dh->expiry_head);
 ent->last_usage = jiffies;
}
