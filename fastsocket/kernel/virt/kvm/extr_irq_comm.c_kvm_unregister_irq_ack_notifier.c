
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_irq_ack_notifier {int link; } ;
struct kvm {int irq_lock; } ;


 int hlist_del_init_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

void kvm_unregister_irq_ack_notifier(struct kvm *kvm,
        struct kvm_irq_ack_notifier *kian)
{
 mutex_lock(&kvm->irq_lock);
 hlist_del_init_rcu(&kian->link);
 mutex_unlock(&kvm->irq_lock);
 synchronize_rcu();
}
