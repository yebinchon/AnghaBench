
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_rec {int dummy; } ;



__attribute__((used)) static void swap_refcount_rec(void *a, void *b, int size)
{
 struct ocfs2_refcount_rec *l = a, *r = b, tmp;

 tmp = *(struct ocfs2_refcount_rec *)l;
 *(struct ocfs2_refcount_rec *)l =
   *(struct ocfs2_refcount_rec *)r;
 *(struct ocfs2_refcount_rec *)r = tmp;
}
