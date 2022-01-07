
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int recv_impl (char const*,int *,char const*,int ,int ,int,int *) ;

int
lzc_receive(const char *snapname, nvlist_t *props, const char *origin,
    boolean_t force, int fd)
{
 return (recv_impl(snapname, props, origin, force, B_FALSE, fd, ((void*)0)));
}
