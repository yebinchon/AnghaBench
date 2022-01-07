
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_4__ {struct TYPE_4__* dtbd_data; } ;
typedef TYPE_1__ dtrace_bufdesc_t ;


 int dt_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
dt_put_buf(dtrace_hdl_t *dtp, dtrace_bufdesc_t *buf)
{
 dt_free(dtp, buf->dtbd_data);
 dt_free(dtp, buf);
}
