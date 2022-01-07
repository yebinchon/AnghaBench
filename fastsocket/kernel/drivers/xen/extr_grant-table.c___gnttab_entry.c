
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t grant_ref_t ;


 size_t RPP ;
 size_t** gnttab_list ;

__attribute__((used)) static inline grant_ref_t *__gnttab_entry(grant_ref_t entry)
{
 return &gnttab_list[(entry) / RPP][(entry) % RPP];
}
