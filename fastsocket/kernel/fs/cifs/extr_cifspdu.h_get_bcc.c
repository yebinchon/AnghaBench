
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int dummy; } ;
typedef int __u16 ;
typedef int __le16 ;


 scalar_t__ BCC (struct smb_hdr*) ;
 int get_unaligned_le16 (int *) ;

__attribute__((used)) static inline __u16
get_bcc(struct smb_hdr *hdr)
{
 __le16 *bc_ptr = (__le16 *)BCC(hdr);

 return get_unaligned_le16(bc_ptr);
}
