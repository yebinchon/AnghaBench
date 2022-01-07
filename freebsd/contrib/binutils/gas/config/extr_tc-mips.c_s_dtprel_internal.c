
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ X_op; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_7__ {int fr_literal; } ;


 int BFD_RELOC_MIPS_TLS_DTPREL32 ;
 int BFD_RELOC_MIPS_TLS_DTPREL64 ;
 int FALSE ;
 scalar_t__ O_symbol ;
 int _ (char*) ;
 int as_bad (int ,char*) ;
 int demand_empty_rest_of_line () ;
 int expression (TYPE_1__*) ;
 int fix_new_exp (TYPE_2__*,char*,size_t,TYPE_1__*,int ,int ) ;
 char* frag_more (size_t) ;
 TYPE_2__* frag_now ;
 int ignore_rest_of_line () ;
 int md_number_to_chars (char*,int ,size_t) ;

__attribute__((used)) static void
s_dtprel_internal (size_t bytes)
{
  expressionS ex;
  char *p;

  expression (&ex);

  if (ex.X_op != O_symbol)
    {
      as_bad (_("Unsupported use of %s"), (bytes == 8
        ? ".dtpreldword"
        : ".dtprelword"));
      ignore_rest_of_line ();
    }

  p = frag_more (bytes);
  md_number_to_chars (p, 0, bytes);
  fix_new_exp (frag_now, p - frag_now->fr_literal, bytes, &ex, FALSE,
        (bytes == 8
  ? BFD_RELOC_MIPS_TLS_DTPREL64
  : BFD_RELOC_MIPS_TLS_DTPREL32));

  demand_empty_rest_of_line ();
}
