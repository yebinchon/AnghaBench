
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter {int * extra; int next; } ;
typedef int FILE ;


 int _ (char*) ;
 char* check_4_gnu_m4 ;
 int dup (int) ;
 int exit (int ) ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 scalar_t__ fgets (char*,int const,int ) ;
 int filter_apply_chain (int ) ;
 scalar_t__ flex_alloc (int const) ;
 int flexerror (int ) ;
 int flexfatal (int ) ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 int * freopen (char*,char*,int *) ;
 char* headerfilename ;
 int lerrsf (int ,char*) ;
 char* outfilename ;
 char* prefix ;
 int stdin ;
 int * stdout ;
 scalar_t__ wait (int ) ;

int filter_tee_header (struct filter *chain)
{




 const int readsz = 512;
 char *buf;
 int to_cfd = -1;
 FILE *to_c = ((void*)0), *to_h = ((void*)0);
 bool write_header;

 write_header = (chain->extra != ((void*)0));






 if ((to_cfd = dup (1)) == -1)
  flexfatal (_("dup(1) failed"));
 to_c = fdopen (to_cfd, "w");

 if (write_header) {
  if (freopen ((char *) chain->extra, "w", stdout) == ((void*)0))
   flexfatal (_("freopen(headerfilename) failed"));

  filter_apply_chain (chain->next);
  to_h = stdout;
 }




 if (write_header) {
        fputs (check_4_gnu_m4, to_h);
  fputs ("m4_changecom`'m4_dnl\n", to_h);
  fputs ("m4_changequote`'m4_dnl\n", to_h);
  fputs ("m4_changequote([[,]])[[]]m4_dnl\n", to_h);
     fputs ("m4_define([[M4_YY_NOOP]])[[]]m4_dnl\n", to_h);
  fputs ("m4_define( [[M4_YY_IN_HEADER]],[[]])m4_dnl\n",
         to_h);
  fprintf (to_h, "#ifndef %sHEADER_H\n", prefix);
  fprintf (to_h, "#define %sHEADER_H 1\n", prefix);
  fprintf (to_h, "#define %sIN_HEADER 1\n\n", prefix);
  fprintf (to_h,
    "m4_define( [[M4_YY_OUTFILE_NAME]],[[%s]])m4_dnl\n",
    headerfilename ? headerfilename : "<stdout>");

 }

    fputs (check_4_gnu_m4, to_c);
 fputs ("m4_changecom`'m4_dnl\n", to_c);
 fputs ("m4_changequote`'m4_dnl\n", to_c);
 fputs ("m4_changequote([[,]])[[]]m4_dnl\n", to_c);
 fputs ("m4_define([[M4_YY_NOOP]])[[]]m4_dnl\n", to_c);
 fprintf (to_c, "m4_define( [[M4_YY_OUTFILE_NAME]],[[%s]])m4_dnl\n",
   outfilename ? outfilename : "<stdout>");

 buf = (char *) flex_alloc (readsz);
 if (!buf)
  flexerror (_("flex_alloc failed in filter_tee_header"));
 while (fgets (buf, readsz, stdin)) {
  fputs (buf, to_c);
  if (write_header)
   fputs (buf, to_h);
 }

 if (write_header) {
  fprintf (to_h, "\n");


  fprintf (to_h, "#line 4000 \"M4_YY_OUTFILE_NAME\"\n");

  fprintf (to_h, "#undef %sIN_HEADER\n", prefix);
  fprintf (to_h, "#endif /* %sHEADER_H */\n", prefix);
  fputs ("m4_undefine( [[M4_YY_IN_HEADER]])m4_dnl\n", to_h);

  fflush (to_h);
  if (ferror (to_h))
   lerrsf (_("error writing output file %s"),
    (char *) chain->extra);

  else if (fclose (to_h))
   lerrsf (_("error closing output file %s"),
    (char *) chain->extra);
 }

 fflush (to_c);
 if (ferror (to_c))
  lerrsf (_("error writing output file %s"),
   outfilename ? outfilename : "<stdout>");

 else if (fclose (to_c))
  lerrsf (_("error closing output file %s"),
   outfilename ? outfilename : "<stdout>");

 while (wait (0) > 0) ;

 exit (0);
 return 0;
}
