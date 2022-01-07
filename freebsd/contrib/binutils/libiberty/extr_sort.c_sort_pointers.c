
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIGIT_MAX ;
 int UCHAR_MAX ;
 int abort () ;
 int memset (unsigned int*,int ,int) ;

void sort_pointers (size_t n, void **pointers, void **work)
{



  typedef unsigned char digit_t;






  unsigned int count[(UCHAR_MAX + 1)];

  int big_endian_p;
  size_t i;
  size_t j;






  if ((sizeof (void *) / sizeof (digit_t)) % 2 != 0)
    abort ();


  for (i = 0, j = 0; i < sizeof (size_t); ++i)
    {
      j *= (UCHAR_MAX + 1);
      j += i;
    }
  big_endian_p = (((char *)&j)[0] == 0);



  for (i = 0; i < sizeof (void *) / sizeof (digit_t); ++i)
    {
      digit_t *digit;
      digit_t *bias;
      digit_t *top;
      unsigned int *countp;
      void **pointerp;



      if (big_endian_p)
 j = sizeof (void *) / sizeof (digit_t) - i;
      else
 j = i;



      memset (count, 0, (UCHAR_MAX + 1) * sizeof (unsigned int));




      bias = ((digit_t *) pointers) + j;
      top = ((digit_t *) (pointers + n)) + j;




      for (digit = bias;
    digit < top;
    digit += sizeof (void *) / sizeof (digit_t))
 ++count[*digit];



      for (countp = count + 1; countp < count + (UCHAR_MAX + 1); ++countp)
 *countp += countp[-1];


      for (pointerp = pointers + n - 1; pointerp >= pointers; --pointerp)
 work[--count[((digit_t *) pointerp)[j]]] = *pointerp;



      pointerp = pointers;
      pointers = work;
      work = pointerp;
    }
}
