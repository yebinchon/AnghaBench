
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_element {char* name; } ;


 int ctor_prio (char const*) ;

__attribute__((used)) static int
ctor_cmp (const void *p1, const void *p2)
{
  const struct set_element * const *pe1 = p1;
  const struct set_element * const *pe2 = p2;
  const char *n1;
  const char *n2;
  int prio1;
  int prio2;

  n1 = (*pe1)->name;
  if (n1 == ((void*)0))
    n1 = "";
  n2 = (*pe2)->name;
  if (n2 == ((void*)0))
    n2 = "";





  prio1 = ctor_prio (n1);
  prio2 = ctor_prio (n2);


  if (prio1 < prio2)
    return 1;
  else if (prio1 > prio2)
    return -1;



  if (pe1 < pe2)
    return -1;
  else if (pe1 > pe2)
    return 1;
  else
    return 0;
}
