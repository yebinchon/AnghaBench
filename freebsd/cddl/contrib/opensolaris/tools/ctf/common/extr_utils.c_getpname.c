
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getexecname () ;
 char const* pname ;
 char* strrchr (char const*,char) ;

const char *
getpname(void)
{
 const char *p, *q;

 if (pname != ((void*)0))
  return (pname);

 if ((p = getexecname()) != ((void*)0))
  q = strrchr(p, '/');
 else
  q = ((void*)0);

 if (q == ((void*)0))
  pname = p;
 else
  pname = q + 1;

 return (pname);
}
