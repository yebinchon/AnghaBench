
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsi_priv {int dummy; } ;
struct TYPE_2__ {struct fsi_priv fsia; } ;


 TYPE_1__* master ;

__attribute__((used)) static int fsi_is_port_a(struct fsi_priv *fsi)
{





 if (fsi == &master->fsia)
  return 1;

 return 0;
}
