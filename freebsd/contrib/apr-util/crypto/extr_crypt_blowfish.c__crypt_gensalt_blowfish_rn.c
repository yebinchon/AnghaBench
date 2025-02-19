
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BF_word ;


 int BF_encode (char*,int const*,int) ;
 int EINVAL ;
 int ERANGE ;
 int __set_errno (int ) ;

char *_crypt_gensalt_blowfish_rn(const char *prefix, unsigned long count,
 const char *input, int size, char *output, int output_size)
{
 if (size < 16 || output_size < 7 + 22 + 1 ||
     (count && (count < 4 || count > 31)) ||
     prefix[0] != '$' || prefix[1] != '2' ||
     (prefix[2] != 'a' && prefix[2] != 'y')) {
  if (output_size > 0) output[0] = '\0';
  __set_errno((output_size < 7 + 22 + 1) ? ERANGE : EINVAL);
  return ((void*)0);
 }

 if (!count) count = 5;

 output[0] = '$';
 output[1] = '2';
 output[2] = prefix[2];
 output[3] = '$';
 output[4] = '0' + count / 10;
 output[5] = '0' + count % 10;
 output[6] = '$';

 BF_encode(&output[7], (const BF_word *)input, 16);
 output[7 + 22] = '\0';

 return output;
}
