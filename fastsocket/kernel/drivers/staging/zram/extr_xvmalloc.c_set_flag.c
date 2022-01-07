
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_header {int prev; } ;
typedef enum blockflags { ____Placeholder_blockflags } blockflags ;


 int BIT (int) ;

__attribute__((used)) static void set_flag(struct block_header *block, enum blockflags flag)
{
 block->prev |= BIT(flag);
}
