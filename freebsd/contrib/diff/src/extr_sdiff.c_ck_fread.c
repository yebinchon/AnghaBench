
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,size_t,int *) ;
 int perror_fatal (int ) ;

__attribute__((used)) static size_t
ck_fread (char *buf, size_t size, FILE *f)
{
  size_t r = fread (buf, sizeof (char), size, f);
  if (r == 0 && ferror (f))
    perror_fatal (_("read failed"));
  return r;
}
