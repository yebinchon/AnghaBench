
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_conn_list {int len; int list; int conns; int nid; } ;
struct hda_codec {int conn_list; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hda_conn_list* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int add_conn_list(struct hda_codec *codec, hda_nid_t nid, int len,
    const hda_nid_t *list)
{
 struct hda_conn_list *p;

 p = kmalloc(sizeof(*p) + len * sizeof(hda_nid_t), GFP_KERNEL);
 if (!p)
  return -ENOMEM;
 p->len = len;
 p->nid = nid;
 memcpy(p->conns, list, len * sizeof(hda_nid_t));
 list_add(&p->list, &codec->conn_list);
 return 0;
}
