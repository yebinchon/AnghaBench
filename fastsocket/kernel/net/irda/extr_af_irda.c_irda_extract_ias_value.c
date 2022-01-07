
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t len; char* string; int charset; } ;
struct TYPE_5__ {size_t len; char* octet_seq; } ;
struct TYPE_8__ {TYPE_3__ irda_attrib_string; TYPE_1__ irda_attrib_octet_seq; int irda_attrib_int; } ;
struct irda_ias_set {int irda_attrib_type; TYPE_4__ attribute; } ;
struct TYPE_6__ {int string; int oct_seq; int integer; } ;
struct ias_value {int type; size_t len; TYPE_2__ t; int charset; } ;


 int EINVAL ;




 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static int irda_extract_ias_value(struct irda_ias_set *ias_opt,
      struct ias_value *ias_value)
{

 switch (ias_value->type) {
 case 131:

  ias_opt->attribute.irda_attrib_int = ias_value->t.integer;
  break;
 case 129:

  ias_opt->attribute.irda_attrib_octet_seq.len = ias_value->len;

  memcpy(ias_opt->attribute.irda_attrib_octet_seq.octet_seq,
         ias_value->t.oct_seq, ias_value->len);
  break;
 case 128:

  ias_opt->attribute.irda_attrib_string.len = ias_value->len;
  ias_opt->attribute.irda_attrib_string.charset = ias_value->charset;

  memcpy(ias_opt->attribute.irda_attrib_string.string,
         ias_value->t.string, ias_value->len);

  ias_opt->attribute.irda_attrib_string.string[ias_value->len] = '\0';
  break;
 case 130:
 default :
  return -EINVAL;
 }


 ias_opt->irda_attrib_type = ias_value->type;

 return 0;
}
