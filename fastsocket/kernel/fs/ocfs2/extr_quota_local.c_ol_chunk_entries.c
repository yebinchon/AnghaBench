
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 unsigned int ol_chunk_blocks (struct super_block*) ;
 unsigned int ol_quota_entries_per_block (struct super_block*) ;

__attribute__((used)) static unsigned int ol_chunk_entries(struct super_block *sb)
{
 return ol_chunk_blocks(sb) * ol_quota_entries_per_block(sb);
}
