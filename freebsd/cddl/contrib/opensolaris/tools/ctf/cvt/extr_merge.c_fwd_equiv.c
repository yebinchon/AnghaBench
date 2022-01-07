
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ t_type; } ;
typedef TYPE_1__ tdesc_t ;


 scalar_t__ ENUM ;
 scalar_t__ FORWARD ;
 scalar_t__ STRUCT ;
 scalar_t__ UNION ;

__attribute__((used)) static int
fwd_equiv(tdesc_t *ctdp, tdesc_t *mtdp)
{
 tdesc_t *defn = (ctdp->t_type == FORWARD ? mtdp : ctdp);

 return (defn->t_type == STRUCT || defn->t_type == UNION ||
     defn->t_type == ENUM);
}
