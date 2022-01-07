
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_3__ {scalar_t__ dbu_err; scalar_t__ dbu_len; int * dbu_ptr; void* dbu_buf; } ;
typedef TYPE_1__ dt_buf_t ;


 int dt_free (int *,void*) ;

void *
dt_buf_claim(dtrace_hdl_t *dtp, dt_buf_t *bp)
{
 void *buf = bp->dbu_buf;

 if (bp->dbu_err != 0) {
  dt_free(dtp, buf);
  buf = ((void*)0);
 }

 bp->dbu_buf = bp->dbu_ptr = ((void*)0);
 bp->dbu_len = 0;

 return (buf);
}
