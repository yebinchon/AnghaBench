
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ratelimit_state {int dummy; } ;


 int __ratelimit (struct ratelimit_state*) ;

__attribute__((used)) static inline int fastsocket_limit(void)
{

 extern struct ratelimit_state fastsocket_ratelimit_state;

 return __ratelimit(&fastsocket_ratelimit_state);
}
