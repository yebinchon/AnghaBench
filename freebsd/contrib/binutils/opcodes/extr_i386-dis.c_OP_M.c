
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; } ;


 int BadOp () ;
 int OP_E (int,int) ;
 TYPE_1__ modrm ;

__attribute__((used)) static void
OP_M (int bytemode, int sizeflag)
{
  if (modrm.mod == 3)

    BadOp ();
  else
    OP_E (bytemode, sizeflag);
}
