
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* t_intr; int t_size; int t_type; scalar_t__ t_id; int t_name; } ;
typedef TYPE_1__ tdesc_t ;
typedef int intr_t ;
struct TYPE_9__ {int intr_nbits; } ;


 int INTRINSIC ;
 int bcopy (TYPE_2__*,TYPE_2__*,int) ;
 int faketypenumber ;
 TYPE_1__* xcalloc (int) ;
 TYPE_2__* xmalloc (int) ;
 int xstrdup (int ) ;

__attribute__((used)) static tdesc_t *
bitintrinsic(tdesc_t *template, int nbits)
{
 tdesc_t *newtdp = xcalloc(sizeof (tdesc_t));

 newtdp->t_name = xstrdup(template->t_name);
 newtdp->t_id = faketypenumber++;
 newtdp->t_type = INTRINSIC;
 newtdp->t_size = template->t_size;
 newtdp->t_intr = xmalloc(sizeof (intr_t));
 bcopy(template->t_intr, newtdp->t_intr, sizeof (intr_t));
 newtdp->t_intr->intr_nbits = nbits;

 return (newtdp);
}
