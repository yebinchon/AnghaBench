
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_input {int fd; int * buf; int * id; } ;



void
snmpd_input_init(struct port_input *pi)
{
 pi->id = ((void*)0);
 pi->fd = -1;
 pi->buf = ((void*)0);
}
