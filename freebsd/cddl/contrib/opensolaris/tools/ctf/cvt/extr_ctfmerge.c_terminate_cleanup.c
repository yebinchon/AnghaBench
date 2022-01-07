
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getenv (char*) ;
 char* outfile ;
 int stderr ;
 char* tmpname ;
 int unlink (char*) ;

__attribute__((used)) static void
terminate_cleanup(void)
{
 int dounlink = getenv("CTFMERGE_TERMINATE_NO_UNLINK") ? 0 : 1;

 if (tmpname != ((void*)0) && dounlink)
  unlink(tmpname);

 if (outfile == ((void*)0))
  return;


 if (dounlink) {
  fprintf(stderr, "Removing %s\n", outfile);
  unlink(outfile);
 }

}
