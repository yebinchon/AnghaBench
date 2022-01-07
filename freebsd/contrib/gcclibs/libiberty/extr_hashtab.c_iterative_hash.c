
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;
typedef scalar_t__ PTR ;


 int mix (int,int,int) ;

hashval_t
iterative_hash (const PTR k_in ,
                register size_t length ,
                register hashval_t initval )

{
  register const unsigned char *k = (const unsigned char *)k_in;
  register hashval_t a,b,c,len;


  len = length;
  a = b = 0x9e3779b9;
  c = initval;






  if (sizeof (hashval_t) == 4 && (((size_t)k)&3) == 0)
    while (len >= 12)
      {
 a += *(hashval_t *)(k+0);
 b += *(hashval_t *)(k+4);
 c += *(hashval_t *)(k+8);
 mix(a,b,c);
 k += 12; len -= 12;
      }
  else

    while (len >= 12)
      {
 a += (k[0] +((hashval_t)k[1]<<8) +((hashval_t)k[2]<<16) +((hashval_t)k[3]<<24));
 b += (k[4] +((hashval_t)k[5]<<8) +((hashval_t)k[6]<<16) +((hashval_t)k[7]<<24));
 c += (k[8] +((hashval_t)k[9]<<8) +((hashval_t)k[10]<<16)+((hashval_t)k[11]<<24));
 mix(a,b,c);
 k += 12; len -= 12;
      }


  c += length;
  switch(len)
    {
    case 11: c+=((hashval_t)k[10]<<24);
    case 10: c+=((hashval_t)k[9]<<16);
    case 9 : c+=((hashval_t)k[8]<<8);

    case 8 : b+=((hashval_t)k[7]<<24);
    case 7 : b+=((hashval_t)k[6]<<16);
    case 6 : b+=((hashval_t)k[5]<<8);
    case 5 : b+=k[4];
    case 4 : a+=((hashval_t)k[3]<<24);
    case 3 : a+=((hashval_t)k[2]<<16);
    case 2 : a+=((hashval_t)k[1]<<8);
    case 1 : a+=k[0];

    }
  mix(a,b,c);

  return c;
}
