
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ name; } ;


 int parent_regex ;
 int regexec (int *,scalar_t__,int ,int *,int ) ;

__attribute__((used)) static bool symbol__match_parent_regex(struct symbol *sym)
{
 if (sym->name && !regexec(&parent_regex, sym->name, 0, ((void*)0), 0))
  return 1;

 return 0;
}
