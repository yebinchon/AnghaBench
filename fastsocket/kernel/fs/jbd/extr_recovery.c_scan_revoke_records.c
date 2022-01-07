
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct recovery_info {int nr_revokes; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int journal_t ;
struct TYPE_2__ {int r_count; } ;
typedef TYPE_1__ journal_revoke_header_t ;
typedef int __be32 ;


 void* be32_to_cpu (int ) ;
 int journal_set_revoke (int *,unsigned int,int ) ;

__attribute__((used)) static int scan_revoke_records(journal_t *journal, struct buffer_head *bh,
          tid_t sequence, struct recovery_info *info)
{
 journal_revoke_header_t *header;
 int offset, max;

 header = (journal_revoke_header_t *) bh->b_data;
 offset = sizeof(journal_revoke_header_t);
 max = be32_to_cpu(header->r_count);

 while (offset < max) {
  unsigned int blocknr;
  int err;

  blocknr = be32_to_cpu(* ((__be32 *) (bh->b_data+offset)));
  offset += 4;
  err = journal_set_revoke(journal, blocknr, sequence);
  if (err)
   return err;
  ++info->nr_revokes;
 }
 return 0;
}
