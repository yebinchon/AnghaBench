
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {int tail; int head; } ;


 int CIRC_CNT (int ,int ,int ) ;
 int TI_WRITE_BUF_SIZE ;

__attribute__((used)) static int ti_buf_data_avail(struct circ_buf *cb)
{
 return CIRC_CNT(cb->head, cb->tail, TI_WRITE_BUF_SIZE);
}
