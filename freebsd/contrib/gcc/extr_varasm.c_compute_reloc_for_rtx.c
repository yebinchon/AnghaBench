
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int GET_CODE (int ) ;


 int compute_reloc_for_rtx_1 ;
 int for_each_rtx (int *,int ,int*) ;

__attribute__((used)) static int
compute_reloc_for_rtx (rtx x)
{
  int reloc;

  switch (GET_CODE (x))
    {
    case 130:
    case 128:
    case 129:
      reloc = 0;
      for_each_rtx (&x, compute_reloc_for_rtx_1, &reloc);
      return reloc;

    default:
      return 0;
    }
}
