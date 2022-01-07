
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int count ;


 int XFRM_MAX_DEPTH ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
__xfrm6_sort(void **dst, void **src, int n, int (*cmp)(void *p), int maxclass)
{
 int i;
 int class[XFRM_MAX_DEPTH];
 int count[maxclass];

 memset(count, 0, sizeof(count));

 for (i = 0; i < n; i++) {
  int c;
  class[i] = c = cmp(src[i]);
  count[c]++;
 }

 for (i = 2; i < maxclass; i++)
  count[i] += count[i - 1];

 for (i = 0; i < n; i++) {
  dst[count[class[i] - 1]++] = src[i];
  src[i] = ((void*)0);
 }

 return 0;
}
