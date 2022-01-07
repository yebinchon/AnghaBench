
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {scalar_t__ size; scalar_t__ offset; } ;



void p9pdu_reset(struct p9_fcall *pdu)
{
 pdu->offset = 0;
 pdu->size = 0;
}
