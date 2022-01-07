
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int list_empty (struct list_head*) ;

__attribute__((used)) static inline int ep_is_linked(struct list_head *p)
{
 return !list_empty(p);
}
