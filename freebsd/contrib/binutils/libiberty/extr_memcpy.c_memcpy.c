
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int bcopy (int const,int ,size_t) ;

PTR
memcpy (PTR out, const PTR in, size_t length)
{
    bcopy(in, out, length);
    return out;
}
