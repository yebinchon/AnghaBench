
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
typedef int relax_substateT ;
typedef int relax_stateT ;
typedef int offsetT ;
struct TYPE_5__ {scalar_t__ opinfo; scalar_t__ opindex; scalar_t__ insn; } ;
struct TYPE_7__ {int fr_var; char* fr_opcode; int fr_line; int fr_file; TYPE_1__ fr_cgen; int fr_offset; int * fr_symbol; int fr_subtype; int fr_type; } ;
struct TYPE_6__ {int frch_obstack; } ;


 int TC_FRAG_INIT (TYPE_3__*) ;
 int as_where (int *,int *) ;
 int frag_grow (int) ;
 int frag_new (int) ;
 TYPE_3__* frag_now ;
 TYPE_2__* frchain_now ;
 int obstack_blank_fast (int *,int) ;
 char* obstack_next_free (int *) ;

char *
frag_var (relax_stateT type, int max_chars, int var, relax_substateT subtype,
   symbolS *symbol, offsetT offset, char *opcode)
{
  register char *retval;

  frag_grow (max_chars);
  retval = obstack_next_free (&frchain_now->frch_obstack);
  obstack_blank_fast (&frchain_now->frch_obstack, max_chars);
  frag_now->fr_var = var;
  frag_now->fr_type = type;
  frag_now->fr_subtype = subtype;
  frag_now->fr_symbol = symbol;
  frag_now->fr_offset = offset;
  frag_now->fr_opcode = opcode;
  as_where (&frag_now->fr_file, &frag_now->fr_line);
  frag_new (max_chars);
  return (retval);
}
