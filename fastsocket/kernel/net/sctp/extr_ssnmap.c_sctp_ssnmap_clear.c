
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int ssn; } ;
struct TYPE_3__ {int len; } ;
struct sctp_ssnmap {TYPE_2__ in; TYPE_1__ out; } ;
typedef int __u16 ;


 int memset (int ,int,size_t) ;

void sctp_ssnmap_clear(struct sctp_ssnmap *map)
{
 size_t size;

 size = (map->in.len + map->out.len) * sizeof(__u16);
 memset(map->in.ssn, 0x00, size);
}
