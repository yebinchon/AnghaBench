
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t* ssn; size_t len; } ;
struct TYPE_3__ {size_t* ssn; size_t len; } ;
struct sctp_ssnmap {TYPE_2__ out; TYPE_1__ in; } ;
typedef size_t __u16 ;


 int memset (struct sctp_ssnmap*,int,int ) ;
 int sctp_ssnmap_size (size_t,size_t) ;

__attribute__((used)) static struct sctp_ssnmap *sctp_ssnmap_init(struct sctp_ssnmap *map, __u16 in,
         __u16 out)
{
 memset(map, 0x00, sctp_ssnmap_size(in, out));


 map->in.ssn = (__u16 *)&map[1];
 map->in.len = in;


 map->out.ssn = &map->in.ssn[in];
 map->out.len = out;

 return map;
}
