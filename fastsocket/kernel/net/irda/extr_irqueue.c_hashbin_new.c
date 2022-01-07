
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hb_type; int hb_spinlock; int magic; } ;
typedef TYPE_1__ hashbin_t ;


 int GFP_ATOMIC ;
 int HB_LOCK ;
 int HB_MAGIC ;
 TYPE_1__* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

hashbin_t *hashbin_new(int type)
{
 hashbin_t* hashbin;




 hashbin = kzalloc(sizeof(*hashbin), GFP_ATOMIC);
 if (!hashbin)
  return ((void*)0);




 hashbin->hb_type = type;
 hashbin->magic = HB_MAGIC;



 if ( hashbin->hb_type & HB_LOCK ) {
  spin_lock_init(&hashbin->hb_spinlock);
 }

 return hashbin;
}
