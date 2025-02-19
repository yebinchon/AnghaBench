
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ CODEC_ID_BUFSZ ;
 int snprintf (char*,scalar_t__,char*,int,...) ;

__attribute__((used)) static char *codec_id(u16 id1, u16 id2, char *buf)
{
 if(id1&0x8080) {
  snprintf(buf, CODEC_ID_BUFSZ, "0x%04x:0x%04x", id1, id2);
 } else {
  buf[0] = (id1 >> 8);
  buf[1] = (id1 & 0xFF);
  buf[2] = (id2 >> 8);
  snprintf(buf+3, CODEC_ID_BUFSZ - 3, "%d", id2&0xFF);
 }
 return buf;
}
