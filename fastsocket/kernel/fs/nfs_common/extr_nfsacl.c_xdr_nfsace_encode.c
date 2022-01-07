
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_array2_desc {int dummy; } ;
struct posix_acl_entry {int e_tag; int e_id; int e_perm; } ;
struct nfsacl_encode_desc {int typeflag; int uid; int gid; int count; TYPE_1__* acl; } ;
typedef int __be32 ;
struct TYPE_2__ {struct posix_acl_entry* a_entries; } ;






 int S_IRWXO ;
 void* htonl (int) ;

__attribute__((used)) static int
xdr_nfsace_encode(struct xdr_array2_desc *desc, void *elem)
{
 struct nfsacl_encode_desc *nfsacl_desc =
  (struct nfsacl_encode_desc *) desc;
 __be32 *p = elem;

 struct posix_acl_entry *entry =
  &nfsacl_desc->acl->a_entries[nfsacl_desc->count++];

 *p++ = htonl(entry->e_tag | nfsacl_desc->typeflag);
 switch(entry->e_tag) {
  case 128:
   *p++ = htonl(nfsacl_desc->uid);
   break;
  case 130:
   *p++ = htonl(nfsacl_desc->gid);
   break;
  case 129:
  case 131:
   *p++ = htonl(entry->e_id);
   break;
  default:
   *p++ = 0;
   break;
 }
 *p++ = htonl(entry->e_perm & S_IRWXO);
 return 0;
}
