
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int do_get_write_access (int *,struct journal_head*,int ) ;
 struct journal_head* jbd2_journal_add_journal_head (struct buffer_head*) ;
 int jbd2_journal_put_journal_head (struct journal_head*) ;

int jbd2_journal_get_write_access(handle_t *handle, struct buffer_head *bh)
{
 struct journal_head *jh = jbd2_journal_add_journal_head(bh);
 int rc;




 rc = do_get_write_access(handle, jh, 0);
 jbd2_journal_put_journal_head(jh);
 return rc;
}
