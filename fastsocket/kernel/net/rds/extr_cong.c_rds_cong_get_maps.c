
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {void* c_fcong; void* c_lcong; int c_faddr; int c_laddr; } ;


 int ENOMEM ;
 void* rds_cong_from_addr (int ) ;

int rds_cong_get_maps(struct rds_connection *conn)
{
 conn->c_lcong = rds_cong_from_addr(conn->c_laddr);
 conn->c_fcong = rds_cong_from_addr(conn->c_faddr);

 if (!(conn->c_lcong && conn->c_fcong))
  return -ENOMEM;

 return 0;
}
