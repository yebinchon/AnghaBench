
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipt_entry {int dummy; } ;



__attribute__((used)) static inline struct ipt_entry *
get_entry(void *base, unsigned int offset)
{
 return (struct ipt_entry *)(base + offset);
}
