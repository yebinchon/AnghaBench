
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int smb_buf_length; } ;


 int be32_add_cpu (int *,int) ;

__attribute__((used)) static inline void inc_rfc1001_len(void *pSMB, int count)
{
 struct smb_hdr *hdr = (struct smb_hdr *)pSMB;

 be32_add_cpu(&hdr->smb_buf_length, count);
}
