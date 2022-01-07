
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;


 int MAXPSIZE ;
 int debug_write (unsigned char*,int) ;
 int ignore_packet () ;
 int send_packet (char,...) ;
 int write_long_le (unsigned char*,int) ;

__attribute__((used)) static void
process_read_request (unsigned char *buf, int buflen)
{
  unsigned char len[4];
  int i, chunk;
  unsigned char seq;



  ignore_packet ();

  for (i = chunk = 0, seq = 0; i < buflen; i += chunk, seq++)
    {

      chunk = buflen - i;
      if (chunk > MAXPSIZE)
 chunk = MAXPSIZE;


      write_long_le (len, chunk);
      send_packet ('p', len, sizeof (len), seq);


      debug_write (&buf[i], chunk);


      ignore_packet ();
    }


  send_packet ('e', "", 0, 0);
}
