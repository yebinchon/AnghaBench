
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* t_tdesc; int t_id; } ;
typedef TYPE_1__ tdesc_t ;


 int debug (int,char*,int ,int ,int ) ;
 int tdesc_name (TYPE_1__*) ;

__attribute__((used)) static int
die_fwd_map(void *arg1, void *arg2)
{
 tdesc_t *fwd = arg1, *sou = arg2;

 debug(3, "tdp %u: mapped forward %s to sou %u\n", fwd->t_id,
     tdesc_name(fwd), sou->t_id);
 fwd->t_tdesc = sou;

 return (0);
}
