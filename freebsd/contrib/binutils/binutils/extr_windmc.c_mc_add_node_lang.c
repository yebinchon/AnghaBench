
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ rc_uint_type ;
struct TYPE_9__ {scalar_t__ vid; struct TYPE_9__* next; TYPE_3__ const* lang; } ;
typedef TYPE_1__ mc_node_lang ;
struct TYPE_10__ {TYPE_1__* sub; } ;
typedef TYPE_2__ mc_node ;
struct TYPE_11__ {scalar_t__ nval; } ;
typedef TYPE_3__ mc_keyword ;


 int _ (char*) ;
 int fatal (char*,...) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* res_alloc (int) ;

mc_node_lang *
mc_add_node_lang (mc_node *root, const mc_keyword *lang, rc_uint_type vid)
{
  mc_node_lang *ret, *h, *p;

  if (! lang || ! root)
    fatal (_("try to add a ill language."));
  ret = res_alloc (sizeof (mc_node_lang));
  memset (ret, 0, sizeof (mc_node_lang));
  ret->lang = lang;
  ret->vid = vid;
  if ((h = root->sub) == ((void*)0))
    root->sub = ret;
  else
    {
      p = ((void*)0);
      while (h != ((void*)0))
 {
   if (h->lang->nval > lang->nval)
     break;
   if (h->lang->nval == lang->nval)
     {
       if (h->vid > vid)
  break;
       if (h->vid == vid)
  fatal ("double defined message id %ld.\n", (long) vid);
     }
   h = (p = h)->next;
 }
      ret->next = h;
      if (! p)
 root->sub = ret;
      else
 p->next = ret;
    }
  return ret;
}
