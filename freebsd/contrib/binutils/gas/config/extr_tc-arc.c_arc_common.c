
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_19__ {int local; TYPE_1__* bsym; TYPE_3__* sy_frag; } ;
typedef TYPE_2__ symbolS ;
typedef scalar_t__ segT ;
typedef int relax_substateT ;
typedef int offsetT ;
struct TYPE_20__ {int * fr_symbol; } ;
struct TYPE_18__ {int flags; } ;


 int BSF_OBJECT ;
 int SKIP_WHITESPACE () ;
 int S_CLEAR_EXTERNAL (TYPE_2__*) ;
 int S_GET_NAME (TYPE_2__*) ;
 scalar_t__ S_GET_SEGMENT (TYPE_2__*) ;
 scalar_t__ S_GET_VALUE (TYPE_2__*) ;
 int S_IS_COMMON (TYPE_2__*) ;
 scalar_t__ S_IS_DEFINED (TYPE_2__*) ;
 int S_SET_ALIGN (TYPE_2__*,int) ;
 int S_SET_EXTERNAL (TYPE_2__*) ;
 int S_SET_SEGMENT (TYPE_2__*,scalar_t__) ;
 int S_SET_SIZE (TYPE_2__*,int) ;
 int S_SET_VALUE (TYPE_2__*,int ) ;
 int as_bad (char*) ;
 int as_warn (char*,...) ;
 int assert (int) ;
 scalar_t__ bfd_com_section_ptr ;
 scalar_t__ bss_section ;
 int demand_empty_rest_of_line () ;
 int frag_align (int,int ,int ) ;
 TYPE_3__* frag_now ;
 char* frag_var (int ,int,int,int ,TYPE_2__*,int ,char*) ;
 int get_absolute_expression () ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 scalar_t__ now_seg ;
 int now_subseg ;
 int record_alignment (scalar_t__,int) ;
 int rs_org ;
 int subseg_set (scalar_t__,int) ;
 TYPE_2__* symbol_find_or_make (char*) ;
 TYPE_3__ zero_address_frag ;

__attribute__((used)) static void
arc_common (int localScope)
{
  char *name;
  char c;
  char *p;
  int align, size;
  symbolS *symbolP;

  name = input_line_pointer;
  c = get_symbol_end ();

  p = input_line_pointer;
  *p = c;
  SKIP_WHITESPACE ();

  if (*input_line_pointer != ',')
    {
      as_bad ("expected comma after symbol name");
      ignore_rest_of_line ();
      return;
    }

  input_line_pointer++;
  size = get_absolute_expression ();

  if (size < 0)
    {
      as_bad ("negative symbol length");
      ignore_rest_of_line ();
      return;
    }

  *p = 0;
  symbolP = symbol_find_or_make (name);
  *p = c;

  if (S_IS_DEFINED (symbolP) && ! S_IS_COMMON (symbolP))
    {
      as_bad ("ignoring attempt to re-define symbol");
      ignore_rest_of_line ();
      return;
    }
  if (((int) S_GET_VALUE (symbolP) != 0) && ((int) S_GET_VALUE (symbolP) != size))

    {
      as_warn ("length of symbol \"%s\" already %ld, ignoring %d",
        S_GET_NAME (symbolP), (long) S_GET_VALUE (symbolP), size);
    }
  assert (symbolP->sy_frag == &zero_address_frag);



  if (*input_line_pointer == ',')
    {
      input_line_pointer++;
      align = get_absolute_expression ();
      if (align < 0)
 {
   align = 0;
   as_warn ("assuming symbol alignment of zero");
 }
    }
  else
    align = 0;

  if (localScope != 0)
    {
      segT old_sec;
      int old_subsec;
      char *pfrag;

      old_sec = now_seg;
      old_subsec = now_subseg;
      record_alignment (bss_section, align);
      subseg_set (bss_section, 0);

      if (align)

 frag_align (align, 0, 0);


      if (S_GET_SEGMENT (symbolP) == bss_section)
 symbolP->sy_frag->fr_symbol = ((void*)0);

      symbolP->sy_frag = frag_now;
      pfrag = frag_var (rs_org, 1, 1, (relax_substateT) 0, symbolP,
   (offsetT) size, (char *) 0);
      *pfrag = 0;

      S_SET_SIZE (symbolP, size);
      S_SET_SEGMENT (symbolP, bss_section);
      S_CLEAR_EXTERNAL (symbolP);
      symbolP->local = 1;
      subseg_set (old_sec, old_subsec);
    }
  else
    {
      S_SET_VALUE (symbolP, (valueT) size);
      S_SET_ALIGN (symbolP, align);
      S_SET_EXTERNAL (symbolP);
      S_SET_SEGMENT (symbolP, bfd_com_section_ptr);
    }

  symbolP->bsym->flags |= BSF_OBJECT;

  demand_empty_rest_of_line ();
}
