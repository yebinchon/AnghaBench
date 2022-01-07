
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_6__ {int id; int * symbol; struct TYPE_6__* next; int sub_section; int section; scalar_t__ next_free_entry; } ;
typedef TYPE_1__ literal_pool ;


 int FAKE_LABEL_NAME ;
 TYPE_1__* find_literal_pool () ;
 TYPE_1__* list_of_pools ;
 int now_seg ;
 int now_subseg ;
 int * symbol_create (int ,int ,int ,int *) ;
 int undefined_section ;
 TYPE_1__* xmalloc (int) ;
 int zero_address_frag ;

__attribute__((used)) static literal_pool *
find_or_make_literal_pool (void)
{

  static unsigned int latest_pool_num = 1;
  literal_pool * pool;

  pool = find_literal_pool ();

  if (pool == ((void*)0))
    {

      pool = xmalloc (sizeof (* pool));
      if (! pool)
 return ((void*)0);

      pool->next_free_entry = 0;
      pool->section = now_seg;
      pool->sub_section = now_subseg;
      pool->next = list_of_pools;
      pool->symbol = ((void*)0);


      list_of_pools = pool;
    }


  if (pool->symbol == ((void*)0))
    {
      pool->symbol = symbol_create (FAKE_LABEL_NAME, undefined_section,
        (valueT) 0, &zero_address_frag);
      pool->id = latest_pool_num ++;
    }


  return pool;
}
