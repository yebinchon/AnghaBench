
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int rblist; } ;


 int rblist__empty (int *) ;

__attribute__((used)) static inline bool intlist__empty(const struct intlist *ilist)
{
 return rblist__empty(&ilist->rblist);
}
