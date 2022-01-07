
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {scalar_t__ nr_entries; } ;



__attribute__((used)) static inline bool rblist__empty(const struct rblist *rblist)
{
 return rblist->nr_entries == 0;
}
