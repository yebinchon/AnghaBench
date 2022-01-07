
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* P_tmpdir ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int getpid () ;
 int sprintf (char*,char*,char*,char*,int,int ) ;
 char* tmpnam_buffer ;
 int tmpnam_counter ;

char *
tmpnam (char *s)
{
  int pid = getpid ();

  if (s == ((void*)0))
    s = tmpnam_buffer;




  while (1)
    {
      FILE *f;
      sprintf (s, "%s/%s%x.%x", P_tmpdir, "t", pid, tmpnam_counter);
      f = fopen (s, "r");
      if (f == ((void*)0))
 break;
      tmpnam_counter++;
      fclose (f);
    }

  return s;
}
