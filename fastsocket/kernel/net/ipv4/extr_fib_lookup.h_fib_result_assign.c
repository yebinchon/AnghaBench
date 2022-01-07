
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_result {struct fib_info* fi; } ;
struct fib_info {int fib_clntref; } ;


 int atomic_inc (int *) ;
 int fib_info_put (struct fib_info*) ;

__attribute__((used)) static inline void fib_result_assign(struct fib_result *res,
         struct fib_info *fi)
{
 if (res->fi != ((void*)0))
  fib_info_put(res->fi);
 res->fi = fi;
 if (fi != ((void*)0))
  atomic_inc(&fi->fib_clntref);
}
