
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {scalar_t__ pid; } ;


 scalar_t__ DEFAULT_GUEST_KERNEL_ID ;

__attribute__((used)) static inline bool machine__is_default_guest(struct machine *machine)
{
 return machine ? machine->pid == DEFAULT_GUEST_KERNEL_ID : 0;
}
