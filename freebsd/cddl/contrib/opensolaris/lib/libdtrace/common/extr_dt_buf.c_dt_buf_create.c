
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_3__ {size_t dbu_len; char const* dbu_name; scalar_t__ dbu_resizes; scalar_t__ dbu_err; int * dbu_buf; int * dbu_ptr; } ;
typedef TYPE_1__ dt_buf_t ;


 size_t _dtrace_bufsize ;
 int * dt_zalloc (int *,size_t) ;
 scalar_t__ dtrace_errno (int *) ;

void
dt_buf_create(dtrace_hdl_t *dtp, dt_buf_t *bp, const char *name, size_t len)
{
 if (len == 0)
  len = _dtrace_bufsize;

 bp->dbu_buf = bp->dbu_ptr = dt_zalloc(dtp, len);
 bp->dbu_len = len;

 if (bp->dbu_buf == ((void*)0))
  bp->dbu_err = dtrace_errno(dtp);
 else
  bp->dbu_err = 0;

 bp->dbu_resizes = 0;
 bp->dbu_name = name;
}
