
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GL_ASYNC ;
 unsigned int GL_EXACT ;
 unsigned int GL_NOCACHE ;
 int HIF_FIRST ;
 int HIF_HOLDER ;
 int HIF_WAIT ;
 unsigned int LM_FLAG_ANY ;
 unsigned int LM_FLAG_NOEXP ;
 unsigned int LM_FLAG_PRIORITY ;
 unsigned int LM_FLAG_TRY ;
 unsigned int LM_FLAG_TRY_1CB ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static const char *hflags2str(char *buf, unsigned flags, unsigned long iflags)
{
 char *p = buf;
 if (flags & LM_FLAG_TRY)
  *p++ = 't';
 if (flags & LM_FLAG_TRY_1CB)
  *p++ = 'T';
 if (flags & LM_FLAG_NOEXP)
  *p++ = 'e';
 if (flags & LM_FLAG_ANY)
  *p++ = 'A';
 if (flags & LM_FLAG_PRIORITY)
  *p++ = 'p';
 if (flags & GL_ASYNC)
  *p++ = 'a';
 if (flags & GL_EXACT)
  *p++ = 'E';
 if (flags & GL_NOCACHE)
  *p++ = 'c';
 if (test_bit(HIF_HOLDER, &iflags))
  *p++ = 'H';
 if (test_bit(HIF_WAIT, &iflags))
  *p++ = 'W';
 if (test_bit(HIF_FIRST, &iflags))
  *p++ = 'F';
 *p = 0;
 return buf;
}
