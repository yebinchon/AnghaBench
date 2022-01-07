
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 size_t fwrite (char const*,int,size_t,int *) ;
 int perror_fatal (int ) ;

__attribute__((used)) static void
ck_fwrite (char const *buf, size_t size, FILE *f)
{
  if (fwrite (buf, sizeof (char), size, f) != size)
    perror_fatal (_("write failed"));
}
