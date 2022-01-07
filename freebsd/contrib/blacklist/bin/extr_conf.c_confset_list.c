
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {size_t cs_n; int * cs_c; } ;
typedef int buf ;


 int BUFSIZ ;
 int LOG_DEBUG ;
 char const* conf_print (char*,int,char*,char*,int *) ;
 int lfun (int ,char*,char const*) ;
 int stub1 (int ,char*,char const*) ;
 int stub2 (int ,char*,char const*) ;
 int stub3 (int ,char*,char const*) ;

__attribute__((used)) static void
confset_list(const struct confset *cs, const char *msg, const char *where)
{
 char buf[BUFSIZ];

 (*lfun)(LOG_DEBUG, "[%s]", msg);
 (*lfun)(LOG_DEBUG, "%20.20s\ttype\tproto\towner\tname\tnfail\tduration",
     where);
 for (size_t i = 0; i < cs->cs_n; i++)
  (*lfun)(LOG_DEBUG, "%s", conf_print(buf, sizeof(buf), "", "\t",
      &cs->cs_c[i]));
}
