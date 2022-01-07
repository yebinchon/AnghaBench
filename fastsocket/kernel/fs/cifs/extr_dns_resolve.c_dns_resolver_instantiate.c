
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
struct TYPE_4__ {size_t* x; } ;
struct key {TYPE_1__ payload; TYPE_2__ type_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int is_ip (void const*,size_t) ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,void const*,size_t) ;

__attribute__((used)) static int
dns_resolver_instantiate(struct key *key, const void *data,
  size_t datalen)
{
 int rc = 0;
 char *ip;


 if (!is_ip(data, datalen))
  return -EINVAL;

 ip = kmalloc(datalen + 1, GFP_KERNEL);
 if (!ip)
  return -ENOMEM;

 memcpy(ip, data, datalen);
 ip[datalen] = '\0';

 key->type_data.x[0] = datalen;
 key->payload.data = ip;

 return rc;
}
