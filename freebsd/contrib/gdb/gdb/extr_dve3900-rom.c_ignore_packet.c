
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PESC ;
 int debug_readchar (int) ;
 int error (char*,int) ;

__attribute__((used)) static void
ignore_packet (void)
{
  int c = -1;
  int len;



  for (len = 0; len < 256; len++)
    {
      c = debug_readchar (0);
      if (c == PESC)
 break;
    }
  if (len == 8)
    error ("Packet header byte not found; %02x seen instead.", c);


  c = debug_readchar (1);

  c = debug_readchar (1);
  len = c & 0xff;

  c = debug_readchar (1);
  len += (c & 0xff) << 8;


  while (len-- > 0)
    c = debug_readchar (1);
}
