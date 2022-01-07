
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int EIO ;
 int nlm_traverse_files (struct sockaddr*,int ,int *) ;
 int nlmsvc_match_ip ;

int
nlmsvc_unlock_all_by_ip(struct sockaddr *server_addr)
{
 int ret;

 ret = nlm_traverse_files(server_addr, nlmsvc_match_ip, ((void*)0));
 return ret ? -EIO : 0;
}
