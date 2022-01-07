
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int abfd; int const* bytes; } ;
typedef int bfd_byte ;


 char* bfd_get_filename (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;

__attribute__((used)) static void
ieee_error (struct ieee_info *info, const bfd_byte *p, const char *s)
{
  if (p != ((void*)0))
    fprintf (stderr, "%s: 0x%lx: %s (0x%x)\n", bfd_get_filename (info->abfd),
      (unsigned long) (p - info->bytes), s, *p);
  else
    fprintf (stderr, "%s: %s\n", bfd_get_filename (info->abfd), s);
}
