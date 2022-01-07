
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_4__ {int dbu_len; int dbu_name; scalar_t__ dbu_err; int * dbu_buf; int * dbu_ptr; } ;
typedef TYPE_1__ dt_buf_t ;


 int dt_buf_create (int *,TYPE_1__*,int ,int ) ;

void
dt_buf_reset(dtrace_hdl_t *dtp, dt_buf_t *bp)
{
 if ((bp->dbu_ptr = bp->dbu_buf) != ((void*)0))
  bp->dbu_err = 0;
 else
  dt_buf_create(dtp, bp, bp->dbu_name, bp->dbu_len);
}
