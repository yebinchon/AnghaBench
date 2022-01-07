
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blacklist {int dummy; } ;


 struct blacklist* bl_create (int,int *,int ) ;
 int vsyslog ;

struct blacklist *
blacklist_open(void) {
 return bl_create(0, ((void*)0), vsyslog);
}
