
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int SB_free (int *) ;
 int * conf ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fprintf (int ,char*) ;
 int * line_builder ;
 int stderr ;

__attribute__((used)) static void
conf_close(void)
{
 if (conf != ((void*)0)) {
  if (ferror(conf)) {
   fprintf(stderr, "read error on configuration file\n");
   exit(EXIT_FAILURE);
  }
  fclose(conf);
  conf = ((void*)0);
 }
 if (line_builder != ((void*)0)) {
  SB_free(line_builder);
  line_builder = ((void*)0);
 }
}
