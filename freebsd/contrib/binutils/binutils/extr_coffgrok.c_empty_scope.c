
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_scope {int dummy; } ;


 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static struct coff_scope *
empty_scope (void)
{
  struct coff_scope *l;
  l = (struct coff_scope *) (xcalloc (sizeof (struct coff_scope), 1));
  return l;
}
