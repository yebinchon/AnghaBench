
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {struct hist_entry* branch_info; } ;


 int free (struct hist_entry*) ;

void hist_entry__free(struct hist_entry *he)
{
 free(he->branch_info);
 free(he);
}
