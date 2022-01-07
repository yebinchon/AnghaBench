
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_address {scalar_t__ status; int socket; } ;


 scalar_t__ RowStatus_active ;
 int SLIST_REMOVE (int *,struct target_address*,int ,int ) ;
 int close (int ) ;
 int free (struct target_address*) ;
 int ta ;
 int target_address ;
 int target_addresslist ;

int
target_delete_address(struct target_address *addrs)
{
 SLIST_REMOVE(&target_addresslist, addrs, target_address, ta);
 if (addrs->status == RowStatus_active)
  close(addrs->socket);
 free(addrs);

 return (0);
}
