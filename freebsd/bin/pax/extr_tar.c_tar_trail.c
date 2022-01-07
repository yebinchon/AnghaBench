
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLKMULT ;
 int NULLCNT ;

int
tar_trail(char *buf, int in_resync, int *cnt)
{
 int i;




 for (i = 0; i < BLKMULT; ++i) {
  if (buf[i] != '\0')
   break;
 }




 if (i != BLKMULT)
  return(-1);
 if (!in_resync && (++*cnt >= NULLCNT))
  return(0);
 return(1);
}
