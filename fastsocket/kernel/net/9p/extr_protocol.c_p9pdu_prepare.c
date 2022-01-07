
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {int dummy; } ;
typedef int int8_t ;
typedef int int16_t ;


 int p9pdu_writef (struct p9_fcall*,int ,char*,int ,int ,int ) ;

int p9pdu_prepare(struct p9_fcall *pdu, int16_t tag, int8_t type)
{
 return p9pdu_writef(pdu, 0, "dbw", 0, type, tag);
}
