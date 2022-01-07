
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFMAX ;
 int fprintf (int ,char*,unsigned char,unsigned char,unsigned char*) ;
 char getDebugChar () ;
 unsigned char hex (char) ;
 int putDebugChar (unsigned char) ;
 unsigned char* remcomInBuffer ;
 scalar_t__ remote_debug ;
 int stderr ;

unsigned char *
getpacket (void)
{
  unsigned char *buffer = &remcomInBuffer[0];
  unsigned char checksum;
  unsigned char xmitcsum;
  int count;
  char ch;

  while (1)
    {

      while ((ch = getDebugChar ()) != '$')
 ;

    retry:
      checksum = 0;
      xmitcsum = -1;
      count = 0;


      while (count < BUFMAX)
 {
   ch = getDebugChar ();
   if (ch == '$')
     goto retry;
   if (ch == '#')
     break;
   checksum = checksum + ch;
   buffer[count] = ch;
   count = count + 1;
 }
      buffer[count] = 0;

      if (ch == '#')
 {
   ch = getDebugChar ();
   xmitcsum = hex (ch) << 4;
   ch = getDebugChar ();
   xmitcsum += hex (ch);

   if (checksum != xmitcsum)
     {
       if (remote_debug)
  {
    fprintf (stderr,
      "bad checksum.  My count = 0x%x, sent=0x%x. buf=%s\n",
      checksum, xmitcsum, buffer);
  }
       putDebugChar ('-');
     }
   else
     {
       putDebugChar ('+');


       if (buffer[2] == ':')
  {
    putDebugChar (buffer[0]);
    putDebugChar (buffer[1]);

    return &buffer[3];
  }

       return &buffer[0];
     }
 }
    }
}
