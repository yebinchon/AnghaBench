
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd ;


 int TOHEX (char*,int) ;
 int abort () ;
 int bfd_bwrite (char*,int,int *) ;
 scalar_t__* sum_block ;

__attribute__((used)) static void
out (bfd *abfd, int type, char *start, char *end)
{
  int sum = 0;
  char *s;
  char front[6];
  bfd_size_type wrlen;

  front[0] = '%';
  TOHEX (front + 1, end - start + 5);
  front[3] = type;

  for (s = start; s < end; s++)
    sum += sum_block[(unsigned char) *s];

  sum += sum_block[(unsigned char) front[1]];
  sum += sum_block[(unsigned char) front[2]];
  sum += sum_block[(unsigned char) front[3]];
  TOHEX (front + 4, sum);
  if (bfd_bwrite (front, (bfd_size_type) 6, abfd) != 6)
    abort ();
  end[0] = '\n';
  wrlen = end - start + 1;
  if (bfd_bwrite (start, wrlen, abfd) != wrlen)
    abort ();
}
