
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct dlm_ls {TYPE_1__* ls_dirtbl; } ;
struct dlm_direntry {int list; int length; int name; } ;
struct TYPE_2__ {int list; } ;


 size_t dir_hash (struct dlm_ls*,int ,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void add_entry_to_hash(struct dlm_ls *ls, struct dlm_direntry *de)
{
 uint32_t bucket;

 bucket = dir_hash(ls, de->name, de->length);
 list_add_tail(&de->list, &ls->ls_dirtbl[bucket].list);
}
