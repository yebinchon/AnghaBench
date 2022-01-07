
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct garp_attr {int data; void* dlen; void* type; int state; } ;
struct garp_applicant {int dummy; } ;


 int GARP_APPLICANT_VO ;
 int GFP_ATOMIC ;
 int garp_attr_insert (struct garp_applicant*,struct garp_attr*) ;
 struct garp_attr* kmalloc (void*,int ) ;
 int memcpy (int ,void const*,void*) ;

__attribute__((used)) static struct garp_attr *garp_attr_create(struct garp_applicant *app,
       const void *data, u8 len, u8 type)
{
 struct garp_attr *attr;

 attr = kmalloc(sizeof(*attr) + len, GFP_ATOMIC);
 if (!attr)
  return attr;
 attr->state = GARP_APPLICANT_VO;
 attr->type = type;
 attr->dlen = len;
 memcpy(attr->data, data, len);
 garp_attr_insert(app, attr);
 return attr;
}
