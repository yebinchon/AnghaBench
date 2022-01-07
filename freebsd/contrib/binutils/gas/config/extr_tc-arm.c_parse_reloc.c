
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reloc_entry {int reloc; } ;


 int BFD_RELOC_UNUSED ;
 int arm_reloc_hsh ;
 struct reloc_entry* hash_find_n (int ,char*,int) ;

__attribute__((used)) static int
parse_reloc (char **str)
{
  struct reloc_entry *r;
  char *p, *q;

  if (**str != '(')
    return BFD_RELOC_UNUSED;

  p = *str + 1;
  q = p;

  while (*q && *q != ')' && *q != ',')
    q++;
  if (*q != ')')
    return -1;

  if ((r = hash_find_n (arm_reloc_hsh, p, q - p)) == ((void*)0))
    return -1;

  *str = q + 1;
  return r->reloc;
}
