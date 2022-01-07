
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int SSA_NAME_VERSION (int const) ;

__attribute__((used)) static int
vuses_compare (const void *pa, const void *pb)
{
  const tree vusea = *((const tree *)pa);
  const tree vuseb = *((const tree *)pb);
  int sn = SSA_NAME_VERSION (vusea) - SSA_NAME_VERSION (vuseb);

  return sn;
}
