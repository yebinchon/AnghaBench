
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_block {int b_count; } ;


 int kref_put (int *,int ) ;
 int nlmsvc_free_block ;

__attribute__((used)) static void nlmsvc_release_block(struct nlm_block *block)
{
 if (block != ((void*)0))
  kref_put(&block->b_count, nlmsvc_free_block);
}
