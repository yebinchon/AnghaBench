
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_block {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void scrub_block_get(struct scrub_block *sblock)
{
 atomic_inc(&sblock->ref_count);
}
