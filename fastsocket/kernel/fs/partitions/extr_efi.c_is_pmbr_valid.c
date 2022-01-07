
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * partition_record; int signature; } ;
typedef TYPE_1__ legacy_mbr ;


 scalar_t__ MSDOS_MBR_SIGNATURE ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ pmbr_part_valid (int *) ;

__attribute__((used)) static int
is_pmbr_valid(legacy_mbr *mbr)
{
 int i;
 if (!mbr || le16_to_cpu(mbr->signature) != MSDOS_MBR_SIGNATURE)
                return 0;
 for (i = 0; i < 4; i++)
  if (pmbr_part_valid(&mbr->partition_record[i]))
                        return 1;
 return 0;
}
