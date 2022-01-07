
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Elf_Scn {scalar_t__ s_ndx; } ;



__attribute__((used)) static int
elfscn_cmp(struct _Elf_Scn *s1, struct _Elf_Scn *s2)
{

 if (s1->s_ndx < s2->s_ndx)
  return (-1);
 if (s1->s_ndx > s2->s_ndx)
  return (1);
 return (0);
}
