
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fsi_priv {int dummy; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int portb_flags; int porta_flags; } ;


 int fsi_is_port_a (struct fsi_priv*) ;
 TYPE_2__* master ;

__attribute__((used)) static u32 fsi_get_info_flags(struct fsi_priv *fsi)
{
 int is_porta = fsi_is_port_a(fsi);

 return is_porta ? master->info->porta_flags :
  master->info->portb_flags;
}
