
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VM_MAYWRITE ;
 unsigned int VM_SHARED ;

__attribute__((used)) static inline int is_cow_mapping(unsigned int flags)
{
 return (flags & (VM_SHARED | VM_MAYWRITE)) == VM_MAYWRITE;
}
