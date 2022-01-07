
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rc_uint_type ;
typedef int bfd_byte ;
typedef int FILE ;


 int _ (char*) ;
 int fatal (int ,char const*,long,long) ;
 scalar_t__ fread (int *,int,scalar_t__,int *) ;

__attribute__((used)) static void
get_data (FILE *e, bfd_byte *p, rc_uint_type c, const char *msg)
{
  rc_uint_type got;

  got = (rc_uint_type) fread (p, 1, c, e);
  if (got == c)
    return;

  fatal (_("%s: read of %lu returned %lu"), msg, (long) c, (long) got);
}
