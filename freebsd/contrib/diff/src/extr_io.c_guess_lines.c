
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lin ;


 int MAX (int,size_t) ;
 int MIN (int,int) ;
 int PTRDIFF_MAX ;

__attribute__((used)) static lin
guess_lines (lin n, size_t s, size_t t)
{
  size_t guessed_bytes_per_line = n < 10 ? 32 : s / (n - 1);
  lin guessed_lines = MAX (1, t / guessed_bytes_per_line);
  return MIN (guessed_lines, PTRDIFF_MAX / (2 * sizeof (char *) + 1) - 5) + 5;
}
