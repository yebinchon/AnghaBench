
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coff_sfile {TYPE_1__* section; } ;
struct coff_section {size_t number; } ;
struct TYPE_2__ {int low; } ;



__attribute__((used)) static int
find_base (struct coff_sfile *sfile, struct coff_section *section)
{
  return sfile->section[section->number].low;
}
