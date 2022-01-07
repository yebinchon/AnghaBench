
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {unsigned int iov_len; unsigned char* iov_base; } ;



__attribute__((used)) static int
smb_move_iov(struct kvec **data, size_t *num, struct kvec *vec, unsigned amount)
{
 struct kvec *iv = *data;
 int i;
 int len;




 while (iv->iov_len <= amount) {
  amount -= iv->iov_len;
  iv++;
  (*num)--;
 }




 vec[0].iov_len = iv->iov_len-amount;
 vec[0].iov_base =((unsigned char *)iv->iov_base)+amount;
 iv++;

 len = vec[0].iov_len;




 for (i = 1; i < *num; i++) {
  vec[i] = *iv++;
  len += vec[i].iov_len;
 }

 *data = vec;
 return len;
}
