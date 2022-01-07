
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct _ioeventfd {scalar_t__ addr; int length; scalar_t__ datamatch; scalar_t__ wildcard; } ;
typedef scalar_t__ gpa_t ;


 int BUG_ON (int) ;
 int IS_ALIGNED (unsigned long,int) ;

__attribute__((used)) static bool
ioeventfd_in_range(struct _ioeventfd *p, gpa_t addr, int len, const void *val)
{
 u64 _val;

 if (!(addr == p->addr && len == p->length))

  return 0;

 if (p->wildcard)

  return 1;



 BUG_ON(!IS_ALIGNED((unsigned long)val, len));

 switch (len) {
 case 1:
  _val = *(u8 *)val;
  break;
 case 2:
  _val = *(u16 *)val;
  break;
 case 4:
  _val = *(u32 *)val;
  break;
 case 8:
  _val = *(u64 *)val;
  break;
 default:
  return 0;
 }

 return _val == p->datamatch ? 1 : 0;
}
