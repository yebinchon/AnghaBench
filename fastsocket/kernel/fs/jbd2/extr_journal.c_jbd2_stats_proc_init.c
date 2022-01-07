
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ j_proc_entry; int j_devname; } ;
typedef TYPE_1__ journal_t ;


 int S_IRUGO ;
 int jbd2_seq_info_fops ;
 int proc_create_data (char*,int ,scalar_t__,int *,TYPE_1__*) ;
 int proc_jbd2_stats ;
 scalar_t__ proc_mkdir (int ,int ) ;

__attribute__((used)) static void jbd2_stats_proc_init(journal_t *journal)
{
 journal->j_proc_entry = proc_mkdir(journal->j_devname, proc_jbd2_stats);
 if (journal->j_proc_entry) {
  proc_create_data("info", S_IRUGO, journal->j_proc_entry,
     &jbd2_seq_info_fops, journal);
 }
}
