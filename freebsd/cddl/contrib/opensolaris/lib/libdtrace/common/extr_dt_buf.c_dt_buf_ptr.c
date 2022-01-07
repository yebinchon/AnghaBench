
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* dbu_buf; } ;
typedef TYPE_1__ dt_buf_t ;



void *
dt_buf_ptr(const dt_buf_t *bp)
{
 return (bp->dbu_buf);
}
