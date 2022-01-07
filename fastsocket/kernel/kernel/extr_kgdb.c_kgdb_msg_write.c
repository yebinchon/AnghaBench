
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFMAX ;
 char* gdbmsgbuf ;
 char* pack_hex_byte (char*,char const) ;
 int put_packet (char*) ;

__attribute__((used)) static void kgdb_msg_write(const char *s, int len)
{
 char *bufptr;
 int wcount;
 int i;


 gdbmsgbuf[0] = 'O';


 while (len > 0) {
  bufptr = gdbmsgbuf + 1;


  if ((len << 1) > (BUFMAX - 2))
   wcount = (BUFMAX - 2) >> 1;
  else
   wcount = len;


  for (i = 0; i < wcount; i++)
   bufptr = pack_hex_byte(bufptr, s[i]);
  *bufptr = '\0';


  s += wcount;
  len -= wcount;


  put_packet(gdbmsgbuf);
 }
}
