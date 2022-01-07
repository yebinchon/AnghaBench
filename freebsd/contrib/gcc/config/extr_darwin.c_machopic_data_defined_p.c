
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;




 scalar_t__ indirect_data (int ) ;
 int machopic_classify_symbol (int ) ;

__attribute__((used)) static int
machopic_data_defined_p (rtx sym_ref)
{
  if (indirect_data (sym_ref))
    return 0;

  switch (machopic_classify_symbol (sym_ref))
    {
    case 129:
    case 128:
      return 1;
    default:
      return 0;
    }
}
