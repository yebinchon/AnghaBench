
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ MINUS ;
 scalar_t__ SYMBOL_REF ;
 int XEXP (int ,int) ;
 char* XSTR (int ,int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool
darwin_local_data_pic (rtx disp)
{
  if (GET_CODE (disp) == MINUS)
    {
      if (GET_CODE (XEXP (disp, 0)) == LABEL_REF
          || GET_CODE (XEXP (disp, 0)) == SYMBOL_REF)
        if (GET_CODE (XEXP (disp, 1)) == SYMBOL_REF)
          {
            const char *sym_name = XSTR (XEXP (disp, 1), 0);
            if (! strcmp (sym_name, "<pic base>"))
              return 1;
          }
    }

  return 0;
}
