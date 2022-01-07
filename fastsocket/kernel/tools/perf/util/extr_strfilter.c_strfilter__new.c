
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter {int root; } ;


 int strfilter__delete (struct strfilter*) ;
 int strfilter_node__new (char const*,char const**) ;
 struct strfilter* zalloc (int) ;

struct strfilter *strfilter__new(const char *rules, const char **err)
{
 struct strfilter *ret = zalloc(sizeof(struct strfilter));
 const char *ep = ((void*)0);

 if (ret)
  ret->root = strfilter_node__new(rules, &ep);

 if (!ret || !ret->root || *ep != '\0') {
  if (err)
   *err = ep;
  strfilter__delete(ret);
  ret = ((void*)0);
 }

 return ret;
}
