
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ncols; int* col_type; int ra; int cfa_reg; int* col_offset; int cfa_offset; scalar_t__ cfa_exp; int pc_begin; } ;
typedef TYPE_1__ Frame_Chunk ;







 int DW_CFA_unreferenced ;


 int printf (char*,...) ;
 int sprintf (char*,char*,int,...) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
frame_display_row (Frame_Chunk *fc, int *need_col_headers, int *max_regs)
{
  int r;
  char tmp[100];

  if (*max_regs < fc->ncols)
    *max_regs = fc->ncols;

  if (*need_col_headers)
    {
      *need_col_headers = 0;

      printf ("   LOC   CFA      ");

      for (r = 0; r < *max_regs; r++)
 if (fc->col_type[r] != DW_CFA_unreferenced)
   {
     if (r == fc->ra)
       printf ("ra   ");
     else
       printf ("r%-4d", r);
   }

      printf ("\n");
    }

  printf ("%08lx ", fc->pc_begin);
  if (fc->cfa_exp)
    strcpy (tmp, "exp");
  else
    sprintf (tmp, "r%d%+d", fc->cfa_reg, fc->cfa_offset);
  printf ("%-8s ", tmp);

  for (r = 0; r < fc->ncols; r++)
    {
      if (fc->col_type[r] != DW_CFA_unreferenced)
 {
   switch (fc->col_type[r])
     {
     case 130:
       strcpy (tmp, "u");
       break;
     case 131:
       strcpy (tmp, "s");
       break;
     case 133:
       sprintf (tmp, "c%+d", fc->col_offset[r]);
       break;
     case 128:
       sprintf (tmp, "v%+d", fc->col_offset[r]);
       break;
     case 132:
       sprintf (tmp, "r%d", fc->col_offset[r]);
       break;
     case 134:
       strcpy (tmp, "exp");
       break;
     case 129:
       strcpy (tmp, "vexp");
       break;
     default:
       strcpy (tmp, "n/a");
       break;
     }
   printf ("%-5s", tmp);
 }
    }
  printf ("\n");
}
