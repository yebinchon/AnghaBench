
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_del ;


 int automata_list_eq_p ;
 int automata_list_hash ;
 int automata_list_table ;
 int * first_free_automata_list_el ;
 int htab_create (int,int ,int ,int ) ;

__attribute__((used)) static void
initiate_automata_lists (void)
{
  first_free_automata_list_el = ((void*)0);
  automata_list_table = htab_create (1500, automata_list_hash,
         automata_list_eq_p, (htab_del) 0);
}
