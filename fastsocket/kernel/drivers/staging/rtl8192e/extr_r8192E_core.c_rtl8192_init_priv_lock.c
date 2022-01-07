
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int mutex; int rf_sem; int wx_sem; int ps_lock; int rf_ps_lock; int irq_th_lock; int irq_lock; int tx_lock; } ;


 int mutex_init (int *) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void rtl8192_init_priv_lock(struct r8192_priv* priv)
{
 spin_lock_init(&priv->tx_lock);
 spin_lock_init(&priv->irq_lock);
 spin_lock_init(&priv->irq_th_lock);
 spin_lock_init(&priv->rf_ps_lock);
 spin_lock_init(&priv->ps_lock);

 sema_init(&priv->wx_sem,1);
 sema_init(&priv->rf_sem,1);
 mutex_init(&priv->mutex);
}
