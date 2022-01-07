
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char*,int *) ;
 int graph_dump_format ;



__attribute__((used)) static void
end_bb (FILE *fp)
{
  switch (graph_dump_format)
    {
    case 128:
      fputs ("}\n", fp);
      break;
    case 129:
      break;
    }
}
