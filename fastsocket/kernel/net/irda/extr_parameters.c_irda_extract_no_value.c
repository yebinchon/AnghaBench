
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pl; int pi; } ;
typedef TYPE_1__ irda_param_t ;
typedef int __u8 ;
typedef int PV_TYPE ;
typedef int (* PI_HANDLER ) (void*,TYPE_1__*,int ) ;


 int PV_PUT ;
 int irda_param_unpack (int *,char*,int *,int *) ;
 int stub1 (void*,TYPE_1__*,int ) ;

__attribute__((used)) static int irda_extract_no_value(void *self, __u8 *buf, int len, __u8 pi,
     PV_TYPE type, PI_HANDLER func)
{
 irda_param_t p;
 int ret;


 irda_param_unpack(buf, "bb", &p.pi, &p.pl);


 ret = (*func)(self, &p, PV_PUT);

 if (ret < 0)
  return ret;

 return 2;
}
