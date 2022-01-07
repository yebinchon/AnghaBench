
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ TARGET_FIX_AND_CONTINUE ;
 char* XSTR (int ,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
indirect_data (rtx sym_ref)
{
  int lprefix;
  const char *name;


  if (TARGET_FIX_AND_CONTINUE == 0)
    return 0;






  name = XSTR (sym_ref, 0);

  lprefix = (((name[0] == '*' || name[0] == '&')
              && (name[1] == 'L' || (name[1] == '"' && name[2] == 'L')))
             || (strncmp (name, "_OBJC_", 6) == 0));

  return ! lprefix;
}
