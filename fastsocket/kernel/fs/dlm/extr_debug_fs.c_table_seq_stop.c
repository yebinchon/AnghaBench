
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rsbtbl_iter {int rsb; } ;


 int dlm_put_rsb (int ) ;
 int kfree (struct rsbtbl_iter*) ;

__attribute__((used)) static void table_seq_stop(struct seq_file *seq, void *iter_ptr)
{
 struct rsbtbl_iter *ri = iter_ptr;

 if (ri) {
  dlm_put_rsb(ri->rsb);
  kfree(ri);
 }
}
