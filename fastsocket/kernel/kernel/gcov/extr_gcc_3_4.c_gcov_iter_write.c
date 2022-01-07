
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct gcov_iterator {int record; size_t type; size_t count; TYPE_2__* info; } ;
struct TYPE_8__ {int ident; int checksum; int* n_ctrs; } ;
struct TYPE_7__ {size_t offset; int ctr_type; } ;
struct TYPE_6__ {int version; int stamp; TYPE_1__* counts; } ;
struct TYPE_5__ {int * values; } ;


 int EINVAL ;
 int GCOV_DATA_MAGIC ;
 int GCOV_TAG_FOR_COUNTER (int ) ;
 int GCOV_TAG_FUNCTION ;
 TYPE_4__* get_func (struct gcov_iterator*) ;
 TYPE_3__* get_type (struct gcov_iterator*) ;
 int seq_write_gcov_u32 (struct seq_file*,int) ;
 int seq_write_gcov_u64 (struct seq_file*,int ) ;

int gcov_iter_write(struct gcov_iterator *iter, struct seq_file *seq)
{
 int rc = -EINVAL;

 switch (iter->record) {
 case 134:
  rc = seq_write_gcov_u32(seq, GCOV_DATA_MAGIC);
  break;
 case 129:
  rc = seq_write_gcov_u32(seq, iter->info->version);
  break;
 case 128:
  rc = seq_write_gcov_u32(seq, iter->info->stamp);
  break;
 case 131:
  rc = seq_write_gcov_u32(seq, GCOV_TAG_FUNCTION);
  break;
 case 130:
  rc = seq_write_gcov_u32(seq, 2);
  break;
 case 132:
  rc = seq_write_gcov_u32(seq, get_func(iter)->ident);
  break;
 case 133:
  rc = seq_write_gcov_u32(seq, get_func(iter)->checksum);
  break;
 case 135:
  rc = seq_write_gcov_u32(seq,
   GCOV_TAG_FOR_COUNTER(get_type(iter)->ctr_type));
  break;
 case 136:
  rc = seq_write_gcov_u32(seq,
    get_func(iter)->n_ctrs[iter->type] * 2);
  break;
 case 137:
  rc = seq_write_gcov_u64(seq,
   iter->info->counts[iter->type].
    values[iter->count + get_type(iter)->offset]);
  break;
 }
 return rc;
}
