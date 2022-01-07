
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_sfile {char* name; struct coff_sfile* next; } ;
struct coff_ofile {struct coff_sfile* source_head; } ;


 scalar_t__ debug ;
 int printf (char*,char*) ;
 int wr_dln (struct coff_ofile*,struct coff_sfile*,int) ;
 int wr_du (struct coff_ofile*,struct coff_sfile*,int) ;
 int wr_dus (struct coff_ofile*,struct coff_sfile*) ;
 int wr_program_structure (struct coff_ofile*,struct coff_sfile*) ;

__attribute__((used)) static void
wr_debug (struct coff_ofile *p)
{
  struct coff_sfile *sfile;
  int n = 0;

  for (sfile = p->source_head;
       sfile;
       sfile = sfile->next)
    {
      if (debug)
 printf ("%s\n", sfile->name);

      wr_du (p, sfile, n);
      wr_dus (p, sfile);
      wr_program_structure (p, sfile);
      wr_dln (p, sfile, n);
      n++;
    }
}
