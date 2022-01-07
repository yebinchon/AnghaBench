
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int rblist; } ;


 int rblist__empty (int *) ;

__attribute__((used)) static inline bool strlist__empty(const struct strlist *self)
{
 return rblist__empty(&self->rblist);
}
