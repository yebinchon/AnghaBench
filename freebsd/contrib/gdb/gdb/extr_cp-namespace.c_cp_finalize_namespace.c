
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obstack {int dummy; } ;
struct block {int dummy; } ;


 int block_set_using (struct block*,int ,struct obstack*) ;
 int cp_copy_usings (int *,struct obstack*) ;
 int * using_list ;

void
cp_finalize_namespace (struct block *static_block,
         struct obstack *obstack)
{
  if (using_list != ((void*)0))
    {
      block_set_using (static_block,
         cp_copy_usings (using_list, obstack),
         obstack);
      using_list = ((void*)0);
    }
}
