
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ format_chars; } ;
typedef TYPE_1__ format_char_info ;


 int gcc_unreachable () ;
 scalar_t__ strchr (scalar_t__,int) ;

__attribute__((used)) static unsigned int
find_char_info_specifier_index (const format_char_info *fci, int c)
{
  unsigned i;

  for (i = 0; fci->format_chars; i++, fci++)
    if (strchr (fci->format_chars, c))
      return i;


  gcc_unreachable ();
}
