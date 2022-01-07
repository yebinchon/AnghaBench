
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
typedef int dtrace_hdl_t ;
struct TYPE_3__ {int dbu_buf; int dbu_resizes; scalar_t__ dbu_len; int dbu_name; } ;
typedef TYPE_1__ dt_buf_t ;


 int dt_dprintf (char*,int ,int ,int ) ;
 int dt_free (int *,int ) ;

void
dt_buf_destroy(dtrace_hdl_t *dtp, dt_buf_t *bp)
{
 dt_dprintf("dt_buf_destroy(%s): size=%lu resizes=%u\n",
     bp->dbu_name, (ulong_t)bp->dbu_len, bp->dbu_resizes);

 dt_free(dtp, bp->dbu_buf);
}
