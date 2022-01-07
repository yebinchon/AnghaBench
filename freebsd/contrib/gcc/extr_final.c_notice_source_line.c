
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int MAX (int,int ) ;
 int force_source_line ;
 int high_block_linenum ;
 int high_function_linenum ;
 char* insn_file (int ) ;
 int insn_line (int ) ;
 char const* last_filename ;
 int last_linenum ;

__attribute__((used)) static bool
notice_source_line (rtx insn)
{
  const char *filename = insn_file (insn);
  int linenum = insn_line (insn);

  if (filename
      && (force_source_line
   || filename != last_filename
   || last_linenum != linenum))
    {
      force_source_line = 0;
      last_filename = filename;
      last_linenum = linenum;
      high_block_linenum = MAX (last_linenum, high_block_linenum);
      high_function_linenum = MAX (last_linenum, high_function_linenum);
      return 1;
    }
  return 0;
}
