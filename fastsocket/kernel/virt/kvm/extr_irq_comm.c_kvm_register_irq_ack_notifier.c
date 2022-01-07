
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_irq_ack_notifier {int link; } ;
struct kvm {int irq_lock; int irq_ack_notifier_list; } ;


 int hlist_add_head_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_register_irq_ack_notifier(struct kvm *kvm,
       struct kvm_irq_ack_notifier *kian)
{
 mutex_lock(&kvm->irq_lock);
 hlist_add_head_rcu(&kian->link, &kvm->irq_ack_notifier_list);
 mutex_unlock(&kvm->irq_lock);
}
