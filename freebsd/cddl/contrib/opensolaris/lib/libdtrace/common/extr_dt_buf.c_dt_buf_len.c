
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t dbu_ptr; size_t dbu_buf; } ;
typedef TYPE_1__ dt_buf_t ;



size_t
dt_buf_len(const dt_buf_t *bp)
{
 return (bp->dbu_ptr - bp->dbu_buf);
}
