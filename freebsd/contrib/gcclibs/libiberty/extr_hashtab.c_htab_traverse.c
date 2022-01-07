
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_trav ;
typedef int htab_t ;
typedef int PTR ;


 int htab_elements (int ) ;
 int htab_expand (int ) ;
 int htab_size (int ) ;
 int htab_traverse_noresize (int ,int ,int ) ;

void
htab_traverse (htab_t htab, htab_trav callback, PTR info)
{
  if (htab_elements (htab) * 8 < htab_size (htab))
    htab_expand (htab);

  htab_traverse_noresize (htab, callback, info);
}
