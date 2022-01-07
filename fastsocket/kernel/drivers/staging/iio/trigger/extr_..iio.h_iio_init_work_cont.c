
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_work_cont {int address; int mask; void* st; int ws_nocheck; int ws; } ;


 int INIT_WORK (int *,void (*) (struct work_struct*)) ;

__attribute__((used)) static inline void
iio_init_work_cont(struct iio_work_cont *cont,
     void (*_checkfunc)(struct work_struct *),
     void (*_nocheckfunc)(struct work_struct *),
     int _add, int _mask, void *_st)
{
 INIT_WORK(&(cont)->ws, _checkfunc);
 INIT_WORK(&(cont)->ws_nocheck, _nocheckfunc);
 cont->address = _add;
 cont->mask = _mask;
 cont->st = _st;
}
