
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fclose (int *) ;
 int perror_fatal (char*) ;

__attribute__((used)) static void
ck_fclose (FILE *f)
{
  if (fclose (f))
    perror_fatal ("fclose");
}
