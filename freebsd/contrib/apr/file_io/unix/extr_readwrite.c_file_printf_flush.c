
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ curpos; } ;
struct apr_file_printf_data {scalar_t__ buf; TYPE_1__ vbuff; int fptr; } ;
typedef int apr_vformatter_buff_t ;


 scalar_t__ apr_file_write_full (int ,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static int file_printf_flush(apr_vformatter_buff_t *buff)
{
    struct apr_file_printf_data *data = (struct apr_file_printf_data *)buff;

    if (apr_file_write_full(data->fptr, data->buf,
                            data->vbuff.curpos - data->buf, ((void*)0))) {
        return -1;
    }

    data->vbuff.curpos = data->buf;
    return 0;
}
