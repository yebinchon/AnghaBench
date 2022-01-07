
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_key {int dummy; } ;
struct kvm_event {struct event_key key; } ;


 int pr_err (char*) ;
 struct kvm_event* zalloc (int) ;

__attribute__((used)) static struct kvm_event *kvm_alloc_init_event(struct event_key *key)
{
 struct kvm_event *event;

 event = zalloc(sizeof(*event));
 if (!event) {
  pr_err("Not enough memory\n");
  return ((void*)0);
 }

 event->key = *key;
 return event;
}
