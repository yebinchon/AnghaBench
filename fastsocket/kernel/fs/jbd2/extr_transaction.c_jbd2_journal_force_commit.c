
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int journal_t ;
struct TYPE_6__ {int h_sync; } ;
typedef TYPE_1__ handle_t ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 TYPE_1__* jbd2_journal_start (int *,int) ;
 int jbd2_journal_stop (TYPE_1__*) ;

int jbd2_journal_force_commit(journal_t *journal)
{
 handle_t *handle;
 int ret;

 handle = jbd2_journal_start(journal, 1);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
 } else {
  handle->h_sync = 1;
  ret = jbd2_journal_stop(handle);
 }
 return ret;
}
