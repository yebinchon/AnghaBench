
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_sfile {struct coff_sfile* next; } ;
struct coff_ofile {struct coff_sfile* source_head; } ;


 int SEEK_SET ;
 int file ;
 int fseek (int ,long,int ) ;
 long ftell (int ) ;
 int wr_ed (struct coff_ofile*,struct coff_sfile*,int) ;
 int wr_er (struct coff_ofile*,struct coff_sfile*,int) ;
 int wr_sc (struct coff_ofile*,struct coff_sfile*) ;
 int wr_un (struct coff_ofile*,struct coff_sfile*,int,int) ;

__attribute__((used)) static void
wr_unit_info (struct coff_ofile *ptr)
{
  struct coff_sfile *sfile;
  int first = 1;

  for (sfile = ptr->source_head;
       sfile;
       sfile = sfile->next)
    {
      long p1;
      long p2;
      int nsecs;

      p1 = ftell (file);
      wr_un (ptr, sfile, first, 0);
      nsecs = wr_sc (ptr, sfile);
      p2 = ftell (file);
      fseek (file, p1, SEEK_SET);
      wr_un (ptr, sfile, first, nsecs);
      fseek (file, p2, SEEK_SET);
      wr_er (ptr, sfile, first);
      wr_ed (ptr, sfile, first);
      first = 0;
    }
}
