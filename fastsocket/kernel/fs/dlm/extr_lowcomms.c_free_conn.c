
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int list; struct connection* othercon; } ;


 int close_connection (struct connection*,int) ;
 int con_cache ;
 int hlist_del (int *) ;
 int kmem_cache_free (int ,struct connection*) ;

__attribute__((used)) static void free_conn(struct connection *con)
{
 close_connection(con, 1);
 if (con->othercon)
  kmem_cache_free(con_cache, con->othercon);
 hlist_del(&con->list);
 kmem_cache_free(con_cache, con);
}
