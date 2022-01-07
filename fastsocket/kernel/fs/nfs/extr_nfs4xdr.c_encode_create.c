
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_6__ {int specdata1; int specdata2; } ;
struct TYPE_5__ {int len; int pages; } ;
struct TYPE_7__ {TYPE_2__ device; TYPE_1__ symlink; } ;
struct nfs4_create_arg {int ftype; int server; int attrs; TYPE_4__* name; TYPE_3__ u; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;
struct TYPE_8__ {int name; int len; } ;





 int OP_CREATE ;
 void* cpu_to_be32 (int) ;
 scalar_t__ decode_create_maxsz ;
 int encode_attrs (struct xdr_stream*,int ,int ) ;
 int encode_string (struct xdr_stream*,int ,int ) ;
 void** reserve_space (struct xdr_stream*,int) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int) ;

__attribute__((used)) static void encode_create(struct xdr_stream *xdr, const struct nfs4_create_arg *create, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 8);
 *p++ = cpu_to_be32(OP_CREATE);
 *p = cpu_to_be32(create->ftype);

 switch (create->ftype) {
 case 128:
  p = reserve_space(xdr, 4);
  *p = cpu_to_be32(create->u.symlink.len);
  xdr_write_pages(xdr, create->u.symlink.pages, 0, create->u.symlink.len);
  break;

 case 130: case 129:
  p = reserve_space(xdr, 8);
  *p++ = cpu_to_be32(create->u.device.specdata1);
  *p = cpu_to_be32(create->u.device.specdata2);
  break;

 default:
  break;
 }

 encode_string(xdr, create->name->len, create->name->name);
 hdr->nops++;
 hdr->replen += decode_create_maxsz;

 encode_attrs(xdr, create->attrs, create->server);
}
