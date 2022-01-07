
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int checksum; } ;
struct rxkad_response {TYPE_1__ encrypted; } ;


 int htonl (int) ;

__attribute__((used)) static void rxkad_calc_response_checksum(struct rxkad_response *response)
{
 u32 csum = 1000003;
 int loop;
 u8 *p = (u8 *) response;

 for (loop = sizeof(*response); loop > 0; loop--)
  csum = csum * 0x10204081 + *p++;

 response->encrypted.checksum = htonl(csum);
}
