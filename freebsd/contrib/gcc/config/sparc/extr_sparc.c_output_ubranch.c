
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_ADDRESSES (int ) ;
 scalar_t__ INSN_ADDRESSES_SET_P () ;
 int INSN_UID (int ) ;
 scalar_t__ TARGET_V9 ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

const char *
output_ubranch (rtx dest, int label, rtx insn)
{
  static char string[64];
  bool v9_form = 0;
  char *p;

  if (TARGET_V9 && INSN_ADDRESSES_SET_P ())
    {
      int delta = (INSN_ADDRESSES (INSN_UID (dest))
     - INSN_ADDRESSES (INSN_UID (insn)));

      if (delta >= -260000 && delta < 260000)
 v9_form = 1;
    }

  if (v9_form)
    strcpy (string, "ba%*,pt\t%%xcc, ");
  else
    strcpy (string, "b%*\t");

  p = strchr (string, '\0');
  *p++ = '%';
  *p++ = 'l';
  *p++ = '0' + label;
  *p++ = '%';
  *p++ = '(';
  *p = '\0';

  return string;
}
