
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int S_SET_EXTERNAL (int *) ;
 char* input_line_pointer ;

void
ia64_check_label (symbolS *label)
{
  if (*input_line_pointer == ':')
    {
      S_SET_EXTERNAL (label);
      input_line_pointer++;
    }
}
