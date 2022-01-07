
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _ddebug {int flags; } ;


 int BUG_ON (int) ;
 int _DPRINTK_FLAGS_PRINT ;

__attribute__((used)) static char *ddebug_describe_flags(struct _ddebug *dp, char *buf,
        size_t maxlen)
{
 char *p = buf;

 BUG_ON(maxlen < 4);
 if (dp->flags & _DPRINTK_FLAGS_PRINT)
  *p++ = 'p';
 if (p == buf)
  *p++ = '-';
 *p = '\0';

 return buf;
}
