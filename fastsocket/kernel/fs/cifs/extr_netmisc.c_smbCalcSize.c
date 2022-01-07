
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int WordCount; } ;


 unsigned int get_bcc (struct smb_hdr*) ;

unsigned int
smbCalcSize(struct smb_hdr *ptr)
{
 return (sizeof(struct smb_hdr) + (2 * ptr->WordCount) +
  2 + get_bcc(ptr));
}
