
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 scalar_t__ fflush (int *) ;
 int perror_fatal (int ) ;

__attribute__((used)) static void
ck_fflush (FILE *f)
{
  if (fflush (f) != 0)
    perror_fatal (_("write failed"));
}
