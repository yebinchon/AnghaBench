
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int dummy; } ;


 int * intlist__find (struct intlist*,int) ;

__attribute__((used)) static inline bool intlist__has_entry(struct intlist *ilist, int i)
{
 return intlist__find(ilist, i) != ((void*)0);
}
