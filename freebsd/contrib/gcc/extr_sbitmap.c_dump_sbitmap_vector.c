
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbitmap ;
typedef int FILE ;


 int dump_sbitmap (int *,int ) ;
 int fprintf (int *,char*,...) ;

void
dump_sbitmap_vector (FILE *file, const char *title, const char *subtitle,
       sbitmap *bmaps, int n_maps)
{
  int bb;

  fprintf (file, "%s\n", title);
  for (bb = 0; bb < n_maps; bb++)
    {
      fprintf (file, "%s %d\n", subtitle, bb);
      dump_sbitmap (file, bmaps[bb]);
    }

  fprintf (file, "\n");
}
