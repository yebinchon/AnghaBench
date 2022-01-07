
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int remove_migration_pte ;
 int rmap_walk (struct page*,int ,struct page*) ;

__attribute__((used)) static void remove_migration_ptes(struct page *old, struct page *new)
{
 rmap_walk(new, remove_migration_pte, old);
}
