
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mounted_vol; } ;
struct ncp_server {TYPE_1__ m; } ;



__attribute__((used)) static inline int
ncp_single_volume(struct ncp_server *server)
{
 return (server->m.mounted_vol[0] != '\0');
}
