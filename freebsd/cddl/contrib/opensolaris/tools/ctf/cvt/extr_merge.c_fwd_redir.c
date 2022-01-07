
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdesc_t ;
typedef int alist_t ;


 int alist_find (int *,void*,void**) ;
 int debug (int,char*,int ) ;
 int tdesc_name (void*) ;

__attribute__((used)) static int
fwd_redir(tdesc_t *fwd, tdesc_t **fwdp, void *private)
{
 alist_t *map = private;
 void *defn;

 if (!alist_find(map, (void *)fwd, (void **)&defn))
  return (0);

 debug(3, "Redirecting an edge to %s\n", tdesc_name(defn));

 *fwdp = defn;

 return (1);
}
