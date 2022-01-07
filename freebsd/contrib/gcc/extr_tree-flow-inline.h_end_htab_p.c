
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ slot; scalar_t__ limit; } ;
typedef TYPE_1__ htab_iterator ;



__attribute__((used)) static inline bool
end_htab_p (htab_iterator *hti)
{
  if (hti->slot >= hti->limit)
    return 1;
  return 0;
}
