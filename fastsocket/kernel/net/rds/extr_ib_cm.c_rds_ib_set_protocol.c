
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {unsigned int c_version; } ;



__attribute__((used)) static void rds_ib_set_protocol(struct rds_connection *conn, unsigned int version)
{
 conn->c_version = version;
}
