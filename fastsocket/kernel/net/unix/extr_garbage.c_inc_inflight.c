
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sock {int inflight; } ;


 int atomic_long_inc (int *) ;

__attribute__((used)) static void inc_inflight(struct unix_sock *usk)
{
 atomic_long_inc(&usk->inflight);
}
