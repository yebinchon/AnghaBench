
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef size_t caddr_t ;


 int bcopy (void*,size_t,size_t) ;

__attribute__((used)) static ssize_t
bcopy_data(void *buf, size_t n, void *data)
{
 caddr_t *posp = (caddr_t *)data;
 bcopy(buf, *posp, n);
 *posp += n;
 return (n);
}
