
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int ol_chunk_blocks (struct super_block*) ;

__attribute__((used)) static unsigned int ol_quota_chunk_block(struct super_block *sb, int c)
{

 return 1 + (ol_chunk_blocks(sb) + 1) * c;
}
