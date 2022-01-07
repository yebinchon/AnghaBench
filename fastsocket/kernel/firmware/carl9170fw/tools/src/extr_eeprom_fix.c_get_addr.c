
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int fprintf (int ,char*,unsigned int) ;
 int get_val (char*,unsigned int*) ;
 int stderr ;

__attribute__((used)) static int get_addr(char *str, unsigned int *val)
{
 int err;

 err = get_val(str, val);
 if (*val & 3) {
  fprintf(stderr, "Address 0x%.8x is not a multiple of 4.\n",
   *val);

  return -EINVAL;
 }

 return err;
}
