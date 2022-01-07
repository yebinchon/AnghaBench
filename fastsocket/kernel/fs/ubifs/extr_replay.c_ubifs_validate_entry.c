
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct ubifs_dent_node {scalar_t__ type; scalar_t__* name; int inum; TYPE_1__ ch; int nlen; int key; } ;


 int EINVAL ;
 scalar_t__ MAX_INUM ;
 int UBIFS_DENT_KEY ;
 scalar_t__ UBIFS_DENT_NODE_SZ ;
 scalar_t__ UBIFS_ITYPES_CNT ;
 int UBIFS_MAX_NLEN ;
 int UBIFS_XENT_KEY ;
 int key_type_flash (struct ubifs_info*,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int strnlen (scalar_t__*,int) ;
 int ubifs_err (char*,...) ;

int ubifs_validate_entry(struct ubifs_info *c,
    const struct ubifs_dent_node *dent)
{
 int key_type = key_type_flash(c, dent->key);
 int nlen = le16_to_cpu(dent->nlen);

 if (le32_to_cpu(dent->ch.len) != nlen + UBIFS_DENT_NODE_SZ + 1 ||
     dent->type >= UBIFS_ITYPES_CNT ||
     nlen > UBIFS_MAX_NLEN || dent->name[nlen] != 0 ||
     strnlen(dent->name, nlen) != nlen ||
     le64_to_cpu(dent->inum) > MAX_INUM) {
  ubifs_err("bad %s node", key_type == UBIFS_DENT_KEY ?
     "directory entry" : "extended attribute entry");
  return -EINVAL;
 }

 if (key_type != UBIFS_DENT_KEY && key_type != UBIFS_XENT_KEY) {
  ubifs_err("bad key type %d", key_type);
  return -EINVAL;
 }

 return 0;
}
