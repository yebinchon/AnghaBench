
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dir_ent {int exp; } ;


 int list_del (int *) ;

__attribute__((used)) static void autofs_delete_usage(struct autofs_dir_ent *ent)
{
 list_del(&ent->exp);
}
