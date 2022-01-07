
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsrec_t ;



__attribute__((used)) static void
lsmergesort(int (*cmp)(lsrec_t *, lsrec_t *), lsrec_t **a, lsrec_t **b, int n)
{
 int m = n / 2;
 int i, j;

 if (m > 1)
  lsmergesort(cmp, a, b, m);
 if (n - m > 1)
  lsmergesort(cmp, a + m, b + m, n - m);
 for (i = m; i > 0; i--)
  b[i - 1] = a[i - 1];
 for (j = m - 1; j < n - 1; j++)
  b[n + m - j - 2] = a[j + 1];
 while (i < j)
  *a++ = cmp(b[i], b[j]) < 0 ? b[i++] : b[j--];
 *a = b[i];
}
