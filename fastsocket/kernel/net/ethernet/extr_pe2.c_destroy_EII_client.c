
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink_proto {int dummy; } ;


 int kfree (struct datalink_proto*) ;

void destroy_EII_client(struct datalink_proto *dl)
{
 kfree(dl);
}
