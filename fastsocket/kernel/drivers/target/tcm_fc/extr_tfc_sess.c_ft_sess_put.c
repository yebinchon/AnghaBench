
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct ft_sess {TYPE_1__ kref; } ;


 int BUG_ON (int) ;
 int atomic_read (int *) ;
 int ft_sess_free ;
 int kref_put (TYPE_1__*,int ) ;

void ft_sess_put(struct ft_sess *sess)
{
 int sess_held = atomic_read(&sess->kref.refcount);

 BUG_ON(!sess_held);
 kref_put(&sess->kref, ft_sess_free);
}
