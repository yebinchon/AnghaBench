
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pl; int pi; } ;
typedef TYPE_1__ irda_param_t ;
typedef int __u8 ;
typedef int PV_TYPE ;
typedef int (* PI_HANDLER ) (void*,TYPE_1__*,int ) ;


 int PV_GET ;
 int irda_param_pack (int *,char*,int ,scalar_t__) ;
 int stub1 (void*,TYPE_1__*,int ) ;

__attribute__((used)) static int irda_insert_no_value(void *self, __u8 *buf, int len, __u8 pi,
    PV_TYPE type, PI_HANDLER func)
{
 irda_param_t p;
 int ret;

 p.pi = pi;
 p.pl = 0;


 ret = (*func)(self, &p, PV_GET);


 irda_param_pack(buf, "bb", p.pi, p.pl);

 if (ret < 0)
  return ret;

 return 2;
}
