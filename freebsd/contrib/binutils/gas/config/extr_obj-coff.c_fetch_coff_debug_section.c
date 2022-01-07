
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int segT ;
struct TYPE_3__ {int section; } ;
typedef TYPE_1__ asymbol ;


 int assert (int) ;
 TYPE_1__* bfd_make_debug_symbol (int ,int *,int ) ;
 int stdoutput ;

__attribute__((used)) static segT
fetch_coff_debug_section (void)
{
  static segT debug_section;

  if (!debug_section)
    {
      const asymbol *s;

      s = bfd_make_debug_symbol (stdoutput, ((void*)0), 0);
      assert (s != 0);
      debug_section = s->section;
    }
  return debug_section;
}
