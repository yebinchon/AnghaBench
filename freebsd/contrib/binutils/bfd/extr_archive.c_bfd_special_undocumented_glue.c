
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct areltdata {scalar_t__ arch_header; } ;
struct ar_hdr {int dummy; } ;
typedef int bfd ;


 struct areltdata* bfd_ar_hdr_from_filesystem (int *,char const*,int ) ;

struct ar_hdr *
bfd_special_undocumented_glue (bfd *abfd, const char *filename)
{
  struct areltdata *ar_elt = bfd_ar_hdr_from_filesystem (abfd, filename, 0);
  if (ar_elt == ((void*)0))
    return ((void*)0);
  return (struct ar_hdr *) ar_elt->arch_header;
}
