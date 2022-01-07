
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_input {scalar_t__ length; scalar_t__ consumed; scalar_t__ buf; int stream; } ;


 int memmove (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
snmp_input_consume(struct port_input *pi)
{
 if (!pi->stream) {

  pi->length = 0;
  return;
 }
 if (pi->consumed >= pi->length) {

  pi->length = 0;
  return;
 }
 memmove(pi->buf, pi->buf + pi->consumed, pi->length - pi->consumed);
 pi->length -= pi->consumed;
}
