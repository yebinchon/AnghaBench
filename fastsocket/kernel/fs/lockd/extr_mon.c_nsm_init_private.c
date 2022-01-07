
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timespec {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nsm_handle {TYPE_1__ sm_priv; } ;
typedef unsigned long s64 ;


 int ktime_get_ts (struct timespec*) ;
 int put_unaligned (unsigned long,int *) ;
 unsigned long timespec_to_ns (struct timespec*) ;

__attribute__((used)) static void nsm_init_private(struct nsm_handle *nsm)
{
 u64 *p = (u64 *)&nsm->sm_priv.data;
 struct timespec ts;
 s64 ns;

 ktime_get_ts(&ts);
 ns = timespec_to_ns(&ts);
 put_unaligned(ns, p);
 put_unaligned((unsigned long)nsm, p + 1);
}
