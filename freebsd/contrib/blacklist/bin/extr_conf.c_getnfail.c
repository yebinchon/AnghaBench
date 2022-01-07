
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int c_nfail; } ;


 int getnum (char const*,size_t,int,int *,char*,char const*) ;

__attribute__((used)) static int
getnfail(const char *f, size_t l, bool local, struct conf *c, const char *p)
{
 return getnum(f, l, local, &c->c_nfail, "nfail", p);
}
