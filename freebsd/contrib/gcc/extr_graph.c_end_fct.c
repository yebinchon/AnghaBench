
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* current_function_name () ;
 int fprintf (int *,char*,char*) ;
 int graph_dump_format ;



__attribute__((used)) static void
end_fct (FILE *fp)
{
  switch (graph_dump_format)
    {
    case 128:
      fprintf (fp, "node: { title: \"%s.999999\" label: \"END\" }\n}\n",
        current_function_name ());
      break;
    case 129:
      break;
    }
}
