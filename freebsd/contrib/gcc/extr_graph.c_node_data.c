
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int CALL_P (int ) ;
 int GET_CODE (int ) ;
 char* GET_NOTE_INSN_NAME (scalar_t__) ;
 char* GET_RTX_NAME (int ) ;
 scalar_t__ INSN_P (int ) ;
 int JUMP_P (int ) ;
 int LABEL_P (int ) ;
 int NONJUMP_INSN_P (int ) ;
 scalar_t__ NOTE_LINE_NUMBER (int ) ;
 scalar_t__ NOTE_P (int ) ;
 int PATTERN (int ) ;
 scalar_t__ PREV_INSN (int ) ;
 int XINT (int ,int ) ;
 char* current_function_name () ;
 int fprintf (int *,char*,char const*,...) ;
 int fputs (char*,int *) ;
 int graph_dump_format ;

 int print_rtl_single (int *,int ) ;


__attribute__((used)) static void
node_data (FILE *fp, rtx tmp_rtx)
{
  if (PREV_INSN (tmp_rtx) == 0)
    {


      switch (graph_dump_format)
 {
 case 128:
   fprintf (fp, "edge: { sourcename: \"%s.0\" targetname: \"%s.%d\" }\n",

     current_function_name (),
     current_function_name (), XINT (tmp_rtx, 0));
   break;
 case 129:
   break;
 }
    }

  switch (graph_dump_format)
    {
    case 128:
      fprintf (fp, "node: {\n  title: \"%s.%d\"\n  color: %s\n  label: \"%s %d\n",

        current_function_name (), XINT (tmp_rtx, 0),
        NOTE_P (tmp_rtx) ? "lightgrey"
        : NONJUMP_INSN_P (tmp_rtx) ? "green"
        : JUMP_P (tmp_rtx) ? "darkgreen"
        : CALL_P (tmp_rtx) ? "darkgreen"
        : LABEL_P (tmp_rtx) ? "darkgrey\n  shape: ellipse" : "white",

        GET_RTX_NAME (GET_CODE (tmp_rtx)), XINT (tmp_rtx, 0));
      break;
    case 129:
      break;
    }


  if (NOTE_P (tmp_rtx))
    {
      const char *name = "";
      if (NOTE_LINE_NUMBER (tmp_rtx) < 0)
 name = GET_NOTE_INSN_NAME (NOTE_LINE_NUMBER (tmp_rtx));
      fprintf (fp, " %s", name);
    }
  else if (INSN_P (tmp_rtx))
    print_rtl_single (fp, PATTERN (tmp_rtx));
  else
    print_rtl_single (fp, tmp_rtx);

  switch (graph_dump_format)
    {
    case 128:
      fputs ("\"\n}\n", fp);
      break;
    case 129:
      break;
    }
}
