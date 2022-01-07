
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct ins* bsearch (char const*,int ,int const,int,int ) ;
 int ins__cmp ;
 int instructions ;

__attribute__((used)) static struct ins *ins__find(const char *name)
{
 const int nmemb = ARRAY_SIZE(instructions);

 return bsearch(name, instructions, nmemb, sizeof(struct ins), ins__cmp);
}
