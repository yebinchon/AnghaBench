
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int force_common_definition; scalar_t__ inhibit_common_definition; } ;
struct TYPE_5__ {int sort_common; } ;
struct TYPE_4__ {int hash; scalar_t__ relocatable; } ;


 int bfd_link_hash_traverse (int ,int ,int*) ;
 TYPE_3__ command_line ;
 TYPE_2__ config ;
 int lang_one_common ;
 TYPE_1__ link_info ;

__attribute__((used)) static void
lang_common (void)
{
  if (command_line.inhibit_common_definition)
    return;
  if (link_info.relocatable
      && ! command_line.force_common_definition)
    return;

  if (! config.sort_common)
    bfd_link_hash_traverse (link_info.hash, lang_one_common, ((void*)0));
  else
    {
      int power;

      for (power = 4; power >= 0; power--)
 bfd_link_hash_traverse (link_info.hash, lang_one_common, &power);
    }
}
