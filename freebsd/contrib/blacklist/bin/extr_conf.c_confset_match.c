
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {size_t cs_n; struct conf const* cs_c; } ;
struct conf {int dummy; } ;
typedef int buf ;


 int BUFSIZ ;
 int LOG_DEBUG ;
 scalar_t__ conf_eq (struct conf*,struct conf const*) ;
 int conf_print (char*,int,char*,char*,struct conf const*) ;
 scalar_t__ debug ;
 int lfun (int ,char*,int ) ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;
 void stub3 (struct conf*,struct conf const*) ;

__attribute__((used)) static size_t
confset_match(const struct confset *cs, struct conf *c,
    void (*fun)(struct conf *, const struct conf *))
{
 char buf[BUFSIZ];
 size_t i;

 for (i = 0; i < cs->cs_n; i++) {
  if (debug)
   (*lfun)(LOG_DEBUG, "%s", conf_print(buf, sizeof(buf),
       "check:\t", "", &cs->cs_c[i]));
  if (conf_eq(c, &cs->cs_c[i])) {
   if (debug)
    (*lfun)(LOG_DEBUG, "%s",
        conf_print(buf, sizeof(buf),
        "found:\t", "", &cs->cs_c[i]));
   (*fun)(c, &cs->cs_c[i]);
   break;
  }
 }
 return i;
}
