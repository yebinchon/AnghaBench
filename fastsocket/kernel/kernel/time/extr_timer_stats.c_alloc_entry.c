
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int dummy; } ;


 scalar_t__ MAX_ENTRIES ;
 struct entry* entries ;
 scalar_t__ nr_entries ;

__attribute__((used)) static struct entry *alloc_entry(void)
{
 if (nr_entries >= MAX_ENTRIES)
  return ((void*)0);

 return entries + nr_entries++;
}
