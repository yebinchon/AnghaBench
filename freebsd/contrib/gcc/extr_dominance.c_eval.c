
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_info {size_t* set_chain; size_t* path_min; scalar_t__* key; } ;
typedef size_t TBB ;


 int compress (struct dom_info*,size_t) ;

__attribute__((used)) static inline TBB
eval (struct dom_info *di, TBB v)
{


  TBB rep = di->set_chain[v];


  if (!rep)
    return di->path_min[v];


  if (di->set_chain[rep])
    {
      compress (di, v);
      rep = di->set_chain[v];
    }

  if (di->key[di->path_min[rep]] >= di->key[di->path_min[v]])
    return di->path_min[v];
  else
    return di->path_min[rep];
}
