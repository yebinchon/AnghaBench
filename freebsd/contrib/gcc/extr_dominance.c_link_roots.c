
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_info {scalar_t__* key; size_t* path_min; size_t* set_child; int* set_size; size_t* set_chain; } ;
typedef size_t TBB ;



__attribute__((used)) static void
link_roots (struct dom_info *di, TBB v, TBB w)
{
  TBB s = w;


  while (di->key[di->path_min[w]] < di->key[di->path_min[di->set_child[s]]])
    {
      if (di->set_size[s] + di->set_size[di->set_child[di->set_child[s]]]
   >= 2 * di->set_size[di->set_child[s]])
 {
   di->set_chain[di->set_child[s]] = s;
   di->set_child[s] = di->set_child[di->set_child[s]];
 }
      else
 {
   di->set_size[di->set_child[s]] = di->set_size[s];
   s = di->set_chain[s] = di->set_child[s];
 }
    }

  di->path_min[s] = di->path_min[w];
  di->set_size[v] += di->set_size[w];
  if (di->set_size[v] < 2 * di->set_size[w])
    {
      TBB tmp = s;
      s = di->set_child[v];
      di->set_child[v] = tmp;
    }


  while (s)
    {
      di->set_chain[s] = v;
      s = di->set_child[s];
    }
}
