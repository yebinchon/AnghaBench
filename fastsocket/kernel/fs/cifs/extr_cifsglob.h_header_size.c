
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int dummy; } ;



__attribute__((used)) static inline size_t
header_size(void)
{
 return sizeof(struct smb_hdr);
}
