
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int * bfd_openw (char const*,char*) ;
 int fatal (char*,char const*) ;

__attribute__((used)) static bfd *
windmc_open_as_binary (const char *filename)
{
  bfd *abfd;

  abfd = bfd_openw (filename, "binary");
  if (! abfd)
    fatal ("can't open `%s' for output", filename);

  return abfd;
}
