
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;




 int mips_classify_symbol (int ) ;

__attribute__((used)) static bool
mips_use_anchors_for_symbol_p (rtx symbol)
{
  switch (mips_classify_symbol (symbol))
    {
    case 129:
    case 128:
      return 0;

    default:
      return 1;
    }
}
