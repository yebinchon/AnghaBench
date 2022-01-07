
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum data_dependence_direction { ____Placeholder_data_dependence_direction } data_dependence_direction ;
typedef int FILE ;
 int fprintf (int *,char*) ;

void
dump_data_dependence_direction (FILE *file,
    enum data_dependence_direction dir)
{
  switch (dir)
    {
    case 131:
      fprintf (file, "+");
      break;

    case 133:
      fprintf (file, "-");
      break;

    case 134:
      fprintf (file, "=");
      break;

    case 129:
      fprintf (file, "+-");
      break;

    case 130:
      fprintf (file, "+=");
      break;

    case 132:
      fprintf (file, "-=");
      break;

    case 128:
      fprintf (file, "*");
      break;

    default:
      break;
    }
}
