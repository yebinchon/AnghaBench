
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ FSUB ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
c_frmt(const void *a, const void *b)
{
 return(strcmp(((const FSUB *)a)->name, ((const FSUB *)b)->name));
}
