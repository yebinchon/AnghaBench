
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen_with_cleanup (char*,char*) ;
 int fwrite (char*,int,int,int *) ;
 int perror_with_name (char*) ;

__attribute__((used)) static void
dump_binary_file (char *filename, char *mode,
    char *buf, int len)
{
  FILE *file;
  int status;

  file = fopen_with_cleanup (filename, mode);
  status = fwrite (buf, len, 1, file);
  if (status != 1)
    perror_with_name (filename);
}
