
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
comparealiases(const void *p1, const void *p2)
{
 const struct alias *const *a1 = p1;
 const struct alias *const *a2 = p2;

 return strcmp((*a1)->name, (*a2)->name);
}
