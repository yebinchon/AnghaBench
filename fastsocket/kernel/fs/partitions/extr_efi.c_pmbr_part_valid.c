
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {scalar_t__ sys_ind; int start_sect; } ;


 scalar_t__ EFI_PMBR_OSTYPE_EFI_GPT ;
 unsigned long le32_to_cpu (int ) ;

__attribute__((used)) static inline int
pmbr_part_valid(struct partition *part)
{
        if (part->sys_ind == EFI_PMBR_OSTYPE_EFI_GPT &&
            le32_to_cpu(part->start_sect) == 1UL)
                return 1;
        return 0;
}
