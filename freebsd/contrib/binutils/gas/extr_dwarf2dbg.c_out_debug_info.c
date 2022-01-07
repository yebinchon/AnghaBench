
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
typedef int segT ;
struct TYPE_5__ {int X_add_number; int * X_add_symbol; void* X_op; int * X_op_symbol; } ;
typedef TYPE_1__ expressionS ;
typedef enum dwarf2_format { ____Placeholder_dwarf2_format } dwarf2_format ;
struct TYPE_7__ {int * text_end; int * text_start; int * next; } ;
struct TYPE_6__ {int dir; char* filename; } ;


 int DWARF2_FORMAT () ;
 int DW_LANG_Mips_Assembler ;
 int INSERT_DIR_SEPARATOR (char*,int) ;
 void* O_subtract ;
 void* O_symbol ;
 int TC_DWARF2_EMIT_OFFSET (int ,int) ;
 char* VERSION ;
 int _ (char*) ;
 int abort () ;
 TYPE_4__* all_segs ;
 int as_fatal (int ) ;
 char** dirs ;
 int dwarf2_format_32bit ;
 int dwarf2_format_64bit ;
 int dwarf2_format_64bit_irix ;
 int emit_expr (TYPE_1__*,int) ;
 TYPE_2__* files ;
 int files_in_use ;
 char* frag_more (int) ;
 char* getpwd () ;
 int memcpy (char*,char*,int) ;
 int out_byte (int) ;
 int out_four (int) ;
 int out_two (int) ;
 int out_uleb128 (int) ;
 int section_symbol (int ) ;
 int sizeof_address ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;
 int subseg_set (int ,int ) ;
 int symbol_set_value_now (int *) ;
 int * symbol_temp_make () ;
 int * symbol_temp_new_now () ;

__attribute__((used)) static void
out_debug_info (segT info_seg, segT abbrev_seg, segT line_seg, segT ranges_seg)
{
  char producer[128];
  char *comp_dir;
  expressionS expr;
  symbolS *info_start;
  symbolS *info_end;
  char *p;
  int len;
  enum dwarf2_format d2f;
  int sizeof_offset;

  subseg_set (info_seg, 0);

  info_start = symbol_temp_new_now ();
  info_end = symbol_temp_make ();


  expr.X_op = O_subtract;
  expr.X_add_symbol = info_end;
  expr.X_op_symbol = info_start;

  d2f = DWARF2_FORMAT ();
  if (d2f == dwarf2_format_32bit)
    {
      expr.X_add_number = -4;
      emit_expr (&expr, 4);
      sizeof_offset = 4;
    }
  else if (d2f == dwarf2_format_64bit)
    {
      expr.X_add_number = -12;
      out_four (-1);
      emit_expr (&expr, 8);
      sizeof_offset = 8;
    }
  else if (d2f == dwarf2_format_64bit_irix)
    {
      expr.X_add_number = -8;
      emit_expr (&expr, 8);
      sizeof_offset = 8;
    }
  else
    {
      as_fatal (_("internal error: unknown dwarf2 format"));
    }


  out_two (2);


  TC_DWARF2_EMIT_OFFSET (section_symbol (abbrev_seg), sizeof_offset);


  out_byte (sizeof_address);


  out_uleb128 (1);



  TC_DWARF2_EMIT_OFFSET (section_symbol (line_seg), 4);


  if (all_segs->next == ((void*)0))
    {

      expr.X_op = O_symbol;
      expr.X_add_symbol = all_segs->text_start;
      expr.X_add_number = 0;
      emit_expr (&expr, sizeof_address);


      expr.X_op = O_symbol;
      expr.X_add_symbol = all_segs->text_end;
      expr.X_add_number = 0;
      emit_expr (&expr, sizeof_address);
    }
  else
    {


      TC_DWARF2_EMIT_OFFSET (section_symbol (ranges_seg), sizeof_offset);
    }





  if (!files || files_in_use < 1)
    abort ();
  if (files[1].dir)
    {
      len = strlen (dirs[files[1].dir]);
      p = frag_more (len + 1);
      memcpy (p, dirs[files[1].dir], len);
      INSERT_DIR_SEPARATOR (p, len);
    }
  len = strlen (files[1].filename) + 1;
  p = frag_more (len);
  memcpy (p, files[1].filename, len);


  comp_dir = getpwd ();
  len = strlen (comp_dir) + 1;
  p = frag_more (len);
  memcpy (p, comp_dir, len);


  sprintf (producer, "GNU AS %s", VERSION);
  len = strlen (producer) + 1;
  p = frag_more (len);
  memcpy (p, producer, len);



  out_two (DW_LANG_Mips_Assembler);

  symbol_set_value_now (info_end);
}
