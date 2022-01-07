
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int FOPEN_WT ;
 int LISTING_LISTING ;
 int LISTING_NOFORM ;
 int LISTING_SYMBOLS ;
 int _ (char*) ;
 int as_warn (int ,char*,int ) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,int ) ;
 int * last_open_file ;
 int * list_file ;
 int list_symbol_table () ;
 int listing ;
 int listing_listing (char*) ;
 scalar_t__ paper_height ;
 int * stdout ;
 char* subtitle ;
 char* title ;
 int xstrerror (int ) ;

void
listing_print (char *name)
{
  int using_stdout;

  title = "";
  subtitle = "";

  if (name == ((void*)0))
    {
      list_file = stdout;
      using_stdout = 1;
    }
  else
    {
      list_file = fopen (name, FOPEN_WT);
      if (list_file != ((void*)0))
 using_stdout = 0;
      else
 {
   as_warn (_("can't open %s: %s"), name, xstrerror (errno));
   list_file = stdout;
   using_stdout = 1;
 }
    }

  if (listing & LISTING_NOFORM)
    paper_height = 0;

  if (listing & LISTING_LISTING)
    listing_listing (name);

  if (listing & LISTING_SYMBOLS)
    list_symbol_table ();

  if (! using_stdout)
    {
      if (fclose (list_file) == EOF)
 as_warn (_("can't close %s: %s"), name, xstrerror (errno));
    }

  if (last_open_file)
    fclose (last_open_file);
}
