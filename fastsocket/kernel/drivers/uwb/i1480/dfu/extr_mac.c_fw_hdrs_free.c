
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_hdr {struct fw_hdr* next; } ;


 int kfree (struct fw_hdr*) ;

__attribute__((used)) static
void fw_hdrs_free(struct fw_hdr *hdr)
{
 struct fw_hdr *next;

 while (hdr) {
  next = hdr->next;
  kfree(hdr);
  hdr = next;
 }
}
