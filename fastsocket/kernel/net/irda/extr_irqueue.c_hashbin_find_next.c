
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void irda_queue_t ;
struct TYPE_5__ {int hb_spinlock; void* hb_current; } ;
typedef TYPE_1__ hashbin_t ;


 scalar_t__ hashbin_find (TYPE_1__*,long,char const*) ;
 void* hashbin_get_next (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void* hashbin_find_next( hashbin_t* hashbin, long hashv, const char* name,
    void ** pnext)
{
 unsigned long flags = 0;
 irda_queue_t* entry;


 spin_lock_irqsave(&hashbin->hb_spinlock, flags);






 entry = (irda_queue_t* ) hashbin_find( hashbin, hashv, name );




 if(entry) {
  hashbin->hb_current = entry;
  *pnext = hashbin_get_next( hashbin );
 } else
  *pnext = ((void*)0);


 spin_unlock_irqrestore(&hashbin->hb_spinlock, flags);

 return entry;
}
