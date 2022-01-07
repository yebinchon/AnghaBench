
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct alphacoff_dynsecinfo {TYPE_1__* got_sect; TYPE_1__* dyninfo_sect; TYPE_1__* str_sect; TYPE_1__* sym_sect; } ;
typedef int bfd ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ asection ;


 scalar_t__ DEPRECATED_STREQ (int ,char*) ;

__attribute__((used)) static void
alphacoff_locate_sections (bfd *ignore_abfd, asection *sectp, void *sip)
{
  struct alphacoff_dynsecinfo *si;

  si = (struct alphacoff_dynsecinfo *) sip;

  if (DEPRECATED_STREQ (sectp->name, ".dynsym"))
    {
      si->sym_sect = sectp;
    }
  else if (DEPRECATED_STREQ (sectp->name, ".dynstr"))
    {
      si->str_sect = sectp;
    }
  else if (DEPRECATED_STREQ (sectp->name, ".dynamic"))
    {
      si->dyninfo_sect = sectp;
    }
  else if (DEPRECATED_STREQ (sectp->name, ".got"))
    {
      si->got_sect = sectp;
    }
}
