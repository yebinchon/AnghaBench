
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blacklist_sa (int,int,int *,int ,char const*) ;

int
blacklist(int action, int rfd, const char *msg)
{
 return blacklist_sa(action, rfd, ((void*)0), 0, msg);
}
