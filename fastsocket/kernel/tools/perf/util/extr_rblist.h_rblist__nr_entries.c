
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {unsigned int nr_entries; } ;



__attribute__((used)) static inline unsigned int rblist__nr_entries(const struct rblist *rblist)
{
 return rblist->nr_entries;
}
