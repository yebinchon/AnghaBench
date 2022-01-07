
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* current_function_name () ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 int graph_dump_format ;



__attribute__((used)) static void
draw_edge (FILE *fp, int from, int to, int bb_edge, int class)
{
  const char * color;
  switch (graph_dump_format)
    {
    case 128:
      color = "";
      if (class == 2)
 color = "color: red ";
      else if (bb_edge)
 color = "color: blue ";
      else if (class == 3)
 color = "color: green ";
      fprintf (fp,
        "edge: { sourcename: \"%s.%d\" targetname: \"%s.%d\" %s",
        current_function_name (), from,
        current_function_name (), to, color);
      if (class)
 fprintf (fp, "class: %d ", class);
      fputs ("}\n", fp);
      break;
    case 129:
      break;
    }
}
