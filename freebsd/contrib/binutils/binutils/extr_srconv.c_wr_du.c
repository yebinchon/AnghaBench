
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct coff_sfile {TYPE_2__* section; } ;
struct coff_ofile {int nsections; } ;
struct IT_du {int format; int unit; int sections; int* san; int* address; int* length; char* tool; int date; scalar_t__ spare; scalar_t__ stackfrmt; scalar_t__ optimized; } ;
struct TYPE_4__ {int high; int low; TYPE_1__* parent; scalar_t__ init; } ;
struct TYPE_3__ {char* name; } ;


 int DATE ;
 int EXEC_P ;
 int abfd ;
 int bfd_get_file_flags (int ) ;
 scalar_t__ debug ;
 int file ;
 void* nints (int) ;
 int printf (char*,char*,int,int) ;
 int sysroff_swap_du_out (int ,struct IT_du*) ;
 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static void
wr_du (struct coff_ofile *p, struct coff_sfile *sfile, int n)
{
  struct IT_du du;
  int lim;
  int i;
  int j;
  unsigned int *lowest = (unsigned *) nints (p->nsections);
  unsigned int *highest = (unsigned *) nints (p->nsections);

  du.format = bfd_get_file_flags (abfd) & EXEC_P ? 0 : 1;
  du.optimized = 0;
  du.stackfrmt = 0;
  du.spare = 0;
  du.unit = n;
  du.sections = p->nsections - 1;
  du.san = (int *) xcalloc (sizeof (int), du.sections);
  du.address = nints (du.sections);
  du.length = nints (du.sections);

  for (i = 0; i < du.sections; i++)
    {
      lowest[i] = ~0;
      highest[i] = 0;
    }

  lim = du.sections;
  for (j = 0; j < lim; j++)
    {
      int src = j;
      int dst = j;

      du.san[dst] = dst;

      if (sfile->section[src].init)
 {
   du.length[dst]
     = sfile->section[src].high - sfile->section[src].low + 1;
   du.address[dst]
     = sfile->section[src].low;
 }
      else
 {
   du.length[dst] = 0;
   du.address[dst] = 0;
 }

      if (debug)
 {
   if (sfile->section[src].parent)
     {
       printf (" section %6s 0x%08x..0x%08x\n",
        sfile->section[src].parent->name,
        du.address[dst],
        du.address[dst] + du.length[dst] - 1);
     }
 }

      du.sections = dst + 1;
    }

  du.tool = "c_gcc";
  du.date = DATE;

  sysroff_swap_du_out (file, &du);
}
