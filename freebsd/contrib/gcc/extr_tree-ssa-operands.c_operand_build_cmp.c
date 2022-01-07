
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int gcc_assert (int) ;
 unsigned int get_name_decl (int ) ;

__attribute__((used)) static int
operand_build_cmp (const void *p, const void *q)
{
  tree e1 = *((const tree *)p);
  tree e2 = *((const tree *)q);
  unsigned int u1,u2;

  u1 = get_name_decl (e1);
  u2 = get_name_decl (e2);





  return (u1 > u2 ? 1 : -1);
}
