
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ byteorder; scalar_t__ flavour; int name; } ;
typedef TYPE_1__ bfd_target ;
struct TYPE_6__ {scalar_t__ endian; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ BFD_ENDIAN_LITTLE ;
 scalar_t__ ENDIAN_BIG ;
 scalar_t__ ENDIAN_LITTLE ;
 TYPE_3__ command_line ;
 scalar_t__ name_compare (int ,int ) ;
 TYPE_1__ const* winner ;

__attribute__((used)) static int
closest_target_match (const bfd_target *target, void *data)
{
  const bfd_target *original = data;

  if (command_line.endian == ENDIAN_BIG
      && target->byteorder != BFD_ENDIAN_BIG)
    return 0;

  if (command_line.endian == ENDIAN_LITTLE
      && target->byteorder != BFD_ENDIAN_LITTLE)
    return 0;


  if (target->flavour != original->flavour)
    return 0;


  if (winner == ((void*)0))
    {
      winner = target;
      return 0;
    }



  if (name_compare (target->name, original->name)
      > name_compare (winner->name, original->name))
    winner = target;


  return 0;
}
