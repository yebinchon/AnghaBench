
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_header {int h_length; void* h_nodeid; void* h_lockspace; void* h_version; } ;


 int le16_to_cpu (int ) ;
 void* le32_to_cpu (void*) ;

__attribute__((used)) static void header_in(struct dlm_header *hd)
{
 hd->h_version = le32_to_cpu(hd->h_version);
 hd->h_lockspace = le32_to_cpu(hd->h_lockspace);
 hd->h_nodeid = le32_to_cpu(hd->h_nodeid);
 hd->h_length = le16_to_cpu(hd->h_length);
}
