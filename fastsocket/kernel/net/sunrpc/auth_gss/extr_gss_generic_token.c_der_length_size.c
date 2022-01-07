
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
der_length_size( int length)
{
 if (length < (1<<7))
  return(1);
 else if (length < (1<<8))
  return(2);




 else if (length < (1<<16))
  return(3);
 else if (length < (1<<24))
  return(4);
 else
  return(5);

}
