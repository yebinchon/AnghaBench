
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_14__ {int * sym; } ;
typedef TYPE_1__ segment_info_type ;
typedef TYPE_2__* segT ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {int name; } ;
struct TYPE_15__ {TYPE_4__* symbol; } ;


 int BSF_SECTION_SYM ;
 int EMIT_SECTION_SYMBOLS ;
 int S_CLEAR_EXTERNAL (int *) ;
 TYPE_2__* S_GET_SEGMENT (int *) ;
 int S_SET_SEGMENT (int *,TYPE_2__*) ;
 int abort () ;
 scalar_t__ obj_sec_sym_ok_for_reloc (TYPE_2__*) ;
 TYPE_1__* seg_info (TYPE_2__*) ;
 int * symbol_create (int ,TYPE_2__*,int ,int *) ;
 int * symbol_find (int ) ;
 TYPE_6__* symbol_get_bfdsym (int *) ;
 int * symbol_new (int ,TYPE_2__*,int ,int *) ;
 int symbol_set_bfdsym (int *,TYPE_4__*) ;
 int symbol_set_frag (int *,int *) ;
 scalar_t__ symbol_table_frozen ;
 TYPE_2__* undefined_section ;
 int zero_address_frag ;

symbolS *
section_symbol (segT sec)
{
  segment_info_type *seginfo = seg_info (sec);
  symbolS *s;

  if (seginfo == 0)
    abort ();
  if (seginfo->sym)
    return seginfo->sym;





  if (! 1 || symbol_table_frozen)
    {

      s = symbol_create (sec->symbol->name, sec, 0, &zero_address_frag);
    }
  else
    {
      segT seg;
      s = symbol_find (sec->symbol->name);


      if (s == ((void*)0)
   || ((seg = S_GET_SEGMENT (s)) != sec
       && seg != undefined_section))
 s = symbol_new (sec->symbol->name, sec, 0, &zero_address_frag);
      else if (seg == undefined_section)
 {
   S_SET_SEGMENT (s, sec);
   symbol_set_frag (s, &zero_address_frag);
 }
    }

  S_CLEAR_EXTERNAL (s);


  if (obj_sec_sym_ok_for_reloc (sec))
    symbol_set_bfdsym (s, sec->symbol);
  else
    symbol_get_bfdsym (s)->flags |= BSF_SECTION_SYM;

  seginfo->sym = s;
  return s;
}
