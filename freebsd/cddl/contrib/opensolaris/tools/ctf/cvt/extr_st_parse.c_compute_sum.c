
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH (int) ;

__attribute__((used)) static int
compute_sum(const char *w)
{
 char c;
 int sum;

 for (sum = 0; (c = *w) != '\0'; sum += c, w++)
  ;
 return (HASH(sum));
}
