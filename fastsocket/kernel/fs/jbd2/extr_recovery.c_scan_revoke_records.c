
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
typedef TYPE_1__ jbd2_journal_revoke_header_t ;
typedef int __be64 ;
typedef int __be32 ;


 int JBD2_FEATURE_INCOMPAT_64BIT ;
 scalar_t__ JBD2_HAS_INCOMPAT_FEATURE (int *,int ) ;
 void* be32_to_cpu (int ) ;
 unsigned long long be64_to_cpu (int ) ;
 int jbd2_journal_set_revoke (int *,unsigned long long,int ) ;

__attribute__((used)) static int scan_revoke_records(journal_t *journal, struct buffer_head *bh,
          tid_t sequence, struct recovery_info *info)
{
 jbd2_journal_revoke_header_t *header;
 int offset, max;
 int record_len = 4;

 header = (jbd2_journal_revoke_header_t *) bh->b_data;
 offset = sizeof(jbd2_journal_revoke_header_t);
 max = be32_to_cpu(header->r_count);

 if (JBD2_HAS_INCOMPAT_FEATURE(journal, JBD2_FEATURE_INCOMPAT_64BIT))
  record_len = 8;

 while (offset + record_len <= max) {
  unsigned long long blocknr;
  int err;

  if (record_len == 4)
   blocknr = be32_to_cpu(* ((__be32 *) (bh->b_data+offset)));
  else
   blocknr = be64_to_cpu(* ((__be64 *) (bh->b_data+offset)));
  offset += record_len;
  err = jbd2_journal_set_revoke(journal, blocknr, sequence);
  if (err)
   return err;
  ++info->nr_revokes;
 }
 return 0;
}
