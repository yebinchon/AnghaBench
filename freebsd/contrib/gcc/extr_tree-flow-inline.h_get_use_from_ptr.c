
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* use_operand_p ;
typedef int tree ;
struct TYPE_3__ {int * use; } ;



__attribute__((used)) static inline tree
get_use_from_ptr (use_operand_p use)
{
  return *(use->use);
}
