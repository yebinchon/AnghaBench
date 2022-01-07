
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_conn_list {int len; int * conns; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int EINVAL ;
 struct hda_conn_list* lookup_conn_list (struct hda_codec*,int ) ;
 int read_and_add_raw_conns (struct hda_codec*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;

int snd_hda_get_conn_list(struct hda_codec *codec, hda_nid_t nid,
     const hda_nid_t **listp)
{
 bool added = 0;

 for (;;) {
  int err;
  const struct hda_conn_list *p;


  p = lookup_conn_list(codec, nid);
  if (p) {
   if (listp)
    *listp = p->conns;
   return p->len;
  }
  if (snd_BUG_ON(added))
   return -EINVAL;

  err = read_and_add_raw_conns(codec, nid);
  if (err < 0)
   return err;
  added = 1;
 }
}
