
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int _update_journal_header_block (struct super_block*,unsigned long,unsigned int) ;

__attribute__((used)) static int update_journal_header_block(struct super_block *sb,
           unsigned long offset,
           unsigned int trans_id)
{
 return _update_journal_header_block(sb, offset, trans_id);
}
