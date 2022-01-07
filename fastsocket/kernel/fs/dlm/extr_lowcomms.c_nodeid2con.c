
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
typedef int gfp_t ;


 struct connection* __nodeid2con (int,int ) ;
 int connections_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct connection *nodeid2con(int nodeid, gfp_t allocation)
{
 struct connection *con;

 mutex_lock(&connections_lock);
 con = __nodeid2con(nodeid, allocation);
 mutex_unlock(&connections_lock);

 return con;
}
