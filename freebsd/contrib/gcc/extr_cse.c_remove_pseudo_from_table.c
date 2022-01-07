
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {int dummy; } ;
typedef int rtx ;


 int VOIDmode ;
 struct table_elt* lookup_for_remove (int ,unsigned int,int ) ;
 int remove_from_table (struct table_elt*,unsigned int) ;

__attribute__((used)) static void
remove_pseudo_from_table (rtx x, unsigned int hash)
{
  struct table_elt *elt;



  while ((elt = lookup_for_remove (x, hash, VOIDmode)))
    remove_from_table (elt, hash);
}
