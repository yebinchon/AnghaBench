
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_5__ {TYPE_1__* pcb_difo; } ;
typedef TYPE_2__ dt_pcb_t ;
struct TYPE_4__ {scalar_t__ dtdo_strtab; } ;


 int bcopy (char const*,scalar_t__,size_t) ;

__attribute__((used)) static ssize_t
dt_copystr(const char *s, size_t n, size_t off, dt_pcb_t *pcb)
{
 bcopy(s, pcb->pcb_difo->dtdo_strtab + off, n);
 return (n);
}
