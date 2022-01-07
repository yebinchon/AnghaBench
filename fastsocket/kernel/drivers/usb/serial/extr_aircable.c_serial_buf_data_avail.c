
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {int tail; int head; } ;


 int AIRCABLE_BUF_SIZE ;
 int CIRC_CNT (int ,int ,int ) ;

__attribute__((used)) static int serial_buf_data_avail(struct circ_buf *cb)
{
 return CIRC_CNT(cb->head, cb->tail, AIRCABLE_BUF_SIZE);
}
