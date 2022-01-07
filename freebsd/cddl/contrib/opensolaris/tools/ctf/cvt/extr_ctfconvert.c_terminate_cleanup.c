
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* infile ;
 int outfile ;
 int stderr ;
 int unlink (char*) ;

__attribute__((used)) static void
terminate_cleanup(void)
{

 if (!outfile) {
  fprintf(stderr, "Removing %s\n", infile);
  unlink(infile);
 }

}
