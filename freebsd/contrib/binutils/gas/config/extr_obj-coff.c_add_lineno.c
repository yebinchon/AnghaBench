
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {int line_number; TYPE_2__ u; } ;
struct line_no {TYPE_1__ l; int * frag; struct line_no* next; } ;
typedef int fragS ;
typedef int addressT ;


 int _ (char*) ;
 int abort () ;
 int as_warn (int ) ;
 int coff_n_line_nos ;
 int current_lineno_sym ;
 struct line_no* line_nos ;
 struct line_no* xmalloc (int) ;

__attribute__((used)) static void
add_lineno (fragS * frag, addressT offset, int num)
{
  struct line_no * new_line = xmalloc (sizeof (* new_line));

  if (!current_lineno_sym)
    abort ();




  if (num <= 0)
    {

      as_warn (_("Line numbers must be positive integers\n"));
      num = 1;
    }

  new_line->next = line_nos;
  new_line->frag = frag;
  new_line->l.line_number = num;
  new_line->l.u.offset = offset;
  line_nos = new_line;
  coff_n_line_nos++;
}
