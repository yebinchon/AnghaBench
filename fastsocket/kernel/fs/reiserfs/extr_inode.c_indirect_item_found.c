
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;


 int POSITION_FOUND ;
 scalar_t__ is_indirect_le_ih (struct item_head*) ;

__attribute__((used)) static inline int indirect_item_found(int retval, struct item_head *ih)
{
 return (retval == POSITION_FOUND) && is_indirect_le_ih(ih);
}
