
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int journal_t ;
struct TYPE_11__ {int h_ref; TYPE_1__* h_transaction; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_12__ {TYPE_2__* journal_info; } ;
struct TYPE_10__ {int * t_journal; } ;


 int ENOMEM ;
 int EROFS ;
 TYPE_2__* ERR_PTR (int) ;
 int J_ASSERT (int) ;
 TYPE_8__* current ;
 int jbd_free_handle (TYPE_2__*) ;
 TYPE_2__* journal_current_handle () ;
 TYPE_2__* new_handle (int) ;
 int start_this_handle (int *,TYPE_2__*) ;

handle_t *journal_start(journal_t *journal, int nblocks)
{
 handle_t *handle = journal_current_handle();
 int err;

 if (!journal)
  return ERR_PTR(-EROFS);

 if (handle) {
  J_ASSERT(handle->h_transaction->t_journal == journal);
  handle->h_ref++;
  return handle;
 }

 handle = new_handle(nblocks);
 if (!handle)
  return ERR_PTR(-ENOMEM);

 current->journal_info = handle;

 err = start_this_handle(journal, handle);
 if (err < 0) {
  jbd_free_handle(handle);
  current->journal_info = ((void*)0);
  handle = ERR_PTR(err);
  goto out;
 }
out:
 return handle;
}
