
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int
int64width(int64_t val)
{
 int len;

 len = 0;

 if (val <= 0) {
  val = -val;
  len++;
 }
 while (val > 0) {
  len++;
  val /= 10;
 }

 return (len);
}
