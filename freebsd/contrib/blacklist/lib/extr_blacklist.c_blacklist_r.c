
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blacklist {int dummy; } ;


 int blacklist_sa_r (struct blacklist*,int,int,int *,int ,char const*) ;

int
blacklist_r(struct blacklist *bl, int action, int rfd, const char *msg)
{
 return blacklist_sa_r(bl, action, rfd, ((void*)0), 0, msg);
}
