
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REQUE (int *,int *) ;
 int _IOLBF ;
 int buffer_head ;
 int* ctab ;
 scalar_t__ open_sbuf () ;
 int quit (int) ;
 int setbuffer (int ,int ,int) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdin ;
 int stdinbuf ;
 int stdout ;

void
init_buffers(void)
{
 int i = 0;







 setbuffer(stdin, stdinbuf, 1);



 setvbuf(stdout, ((void*)0), _IOLBF, 0);
 if (open_sbuf() < 0)
  quit(2);
 REQUE(&buffer_head, &buffer_head);
 for (i = 0; i < 256; i++)
  ctab[i] = i;
}
