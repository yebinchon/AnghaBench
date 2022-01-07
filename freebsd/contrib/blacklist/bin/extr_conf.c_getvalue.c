
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int advance (char**) ;
 int stub1 (char const*,size_t,int,struct conf*,char const*) ;

__attribute__((used)) static int
getvalue(const char *f, size_t l, bool local, void *r, char **p,
    int (*fun)(const char *, size_t, bool, struct conf *, const char *))
{
 char *ep = *p;

 advance(p);
 return (*fun)(f, l, local, r, ep);
}
