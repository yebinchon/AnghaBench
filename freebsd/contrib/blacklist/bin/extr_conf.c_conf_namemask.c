
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int c_rmask; int c_family; int c_name; } ;


 int fmtmask (char*,size_t,int ,int ) ;
 int fmtname (int ) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static const char *
conf_namemask(char *b, size_t l, const struct conf *c)
{
 strlcpy(b, fmtname(c->c_name), l);
 fmtmask(b, l, c->c_family, c->c_rmask);
 return b;
}
