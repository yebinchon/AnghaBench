
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_8__ {int h_err; TYPE_2__* h_transaction; } ;
typedef TYPE_3__ handle_t ;
struct TYPE_7__ {TYPE_1__* t_journal; } ;
struct TYPE_6__ {struct super_block* j_private; } ;


 int __ext3_std_error (struct super_block*,char const*,int) ;
 int journal_stop (TYPE_3__*) ;

int __ext3_journal_stop(const char *where, handle_t *handle)
{
 struct super_block *sb;
 int err;
 int rc;

 sb = handle->h_transaction->t_journal->j_private;
 err = handle->h_err;
 rc = journal_stop(handle);

 if (!err)
  err = rc;
 if (err)
  __ext3_std_error(sb, where, err);
 return err;
}
