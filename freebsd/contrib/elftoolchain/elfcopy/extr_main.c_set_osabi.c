
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elfcopy {int abi; } ;
struct TYPE_2__ {int abi; int * name; } ;


 int EXIT_FAILURE ;
 int errx (int ,char*,char const*) ;
 TYPE_1__* osabis ;
 scalar_t__ strcasecmp (int *,char const*) ;

__attribute__((used)) static void
set_osabi(struct elfcopy *ecp, const char *abi)
{
 int i, found;

 found = 0;
 for (i = 0; osabis[i].name != ((void*)0); i++)
  if (strcasecmp(osabis[i].name, abi) == 0) {
   ecp->abi = osabis[i].abi;
   found = 1;
   break;
  }
 if (!found)
  errx(EXIT_FAILURE, "unrecognized OSABI %s", abi);
}
