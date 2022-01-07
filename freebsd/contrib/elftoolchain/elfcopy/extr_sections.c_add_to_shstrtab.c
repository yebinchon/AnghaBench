
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elfcopy {TYPE_1__* shstrtab; } ;
struct TYPE_2__ {int strtab; } ;


 int EXIT_FAILURE ;
 scalar_t__ elftc_string_table_insert (int ,char const*) ;
 int errx (int ,char*) ;

void
add_to_shstrtab(struct elfcopy *ecp, const char *name)
{

 if (elftc_string_table_insert(ecp->shstrtab->strtab, name) == 0)
  errx(EXIT_FAILURE, "elftc_string_table_insert failed");
}
