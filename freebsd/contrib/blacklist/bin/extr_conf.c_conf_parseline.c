
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int dummy; } ;


 int getfamily ;
 int gethostport ;
 int getname ;
 int getnfail ;
 int getproto ;
 int getsecs ;
 int getuid ;
 int getvalue (char const*,size_t,int,struct conf*,char**,int ) ;
 scalar_t__ isspace (unsigned char) ;
 int memset (struct conf*,int ,int) ;

__attribute__((used)) static int
conf_parseline(const char *f, size_t l, char *p, struct conf *c, bool local)
{
 int e;

 while (*p && isspace((unsigned char)*p))
  p++;

 memset(c, 0, sizeof(*c));
 e = getvalue(f, l, local, c, &p, gethostport);
 if (e) return -1;
 e = getvalue(f, l, local, c, &p, getproto);
 if (e) return -1;
 e = getvalue(f, l, local, c, &p, getfamily);
 if (e) return -1;
 e = getvalue(f, l, local, c, &p, getuid);
 if (e) return -1;
 e = getvalue(f, l, local, c, &p, getname);
 if (e) return -1;
 e = getvalue(f, l, local, c, &p, getnfail);
 if (e) return -1;
 e = getvalue(f, l, local, c, &p, getsecs);
 if (e) return -1;

 return 0;
}
