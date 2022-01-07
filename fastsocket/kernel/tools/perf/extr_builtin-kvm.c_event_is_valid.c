
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_event {int dummy; } ;


 int get_event_count (struct kvm_event*,int) ;

__attribute__((used)) static bool event_is_valid(struct kvm_event *event, int vcpu)
{
 return !!get_event_count(event, vcpu);
}
