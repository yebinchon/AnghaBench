
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int rblist; } ;


 unsigned int rblist__nr_entries (int *) ;

__attribute__((used)) static inline unsigned int intlist__nr_entries(const struct intlist *ilist)
{
 return rblist__nr_entries(&ilist->rblist);
}
