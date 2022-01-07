
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ endpos; scalar_t__ curpos; } ;
struct brigade_vprintf_data_t {scalar_t__ cbuff; TYPE_1__ vbuff; int ctx; int * flusher; int b; } ;
typedef int apr_vformatter_buff_t ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ APR_BUCKET_BUFF_SIZE ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_brigade_write (int ,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static apr_status_t brigade_flush(apr_vformatter_buff_t *buff)
{






    struct brigade_vprintf_data_t *vd = (struct brigade_vprintf_data_t*)buff;
    apr_status_t res = APR_SUCCESS;

    res = apr_brigade_write(vd->b, *vd->flusher, vd->ctx, vd->cbuff,
                          APR_BUCKET_BUFF_SIZE);

    if(res != APR_SUCCESS) {
      return -1;
    }

    vd->vbuff.curpos = vd->cbuff;
    vd->vbuff.endpos = vd->cbuff + APR_BUCKET_BUFF_SIZE;

    return res;
}
