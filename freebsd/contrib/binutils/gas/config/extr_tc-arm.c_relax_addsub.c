
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* fr_literal; int fr_fix; } ;
typedef TYPE_1__ fragS ;
struct TYPE_7__ {int owner; } ;
typedef TYPE_2__ asection ;


 int bfd_get_16 (int ,char*) ;
 int relax_immediate (TYPE_1__*,int,int ) ;

__attribute__((used)) static int
relax_addsub (fragS *fragp, asection *sec)
{
  char *buf;
  int op;

  buf = fragp->fr_literal + fragp->fr_fix;
  op = bfd_get_16(sec->owner, buf);
  if ((op & 0xf) == ((op >> 4) & 0xf))
    return relax_immediate (fragp, 8, 0);
  else
    return relax_immediate (fragp, 3, 0);
}
