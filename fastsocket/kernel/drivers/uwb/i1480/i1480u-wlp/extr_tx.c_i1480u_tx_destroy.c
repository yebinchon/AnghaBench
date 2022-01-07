
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480u_tx {int list_node; } ;
struct i1480u {int tx_list_lock; } ;


 int i1480u_tx_free (struct i1480u_tx*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static
void i1480u_tx_destroy(struct i1480u *i1480u, struct i1480u_tx *wtx)
{
 unsigned long flags;
 spin_lock_irqsave(&i1480u->tx_list_lock, flags);
 list_del(&wtx->list_node);
 i1480u_tx_free(wtx);
 spin_unlock_irqrestore(&i1480u->tx_list_lock, flags);
}
