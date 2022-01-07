
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {int id; scalar_t__ value; } ;
struct maven_gamma {unsigned char reg83; unsigned char reg84; unsigned char reg85; unsigned char reg86; unsigned char reg87; unsigned char reg88; unsigned char reg89; unsigned char reg8a; unsigned char reg8b; } ;
struct maven_data {int client; } ;
struct TYPE_3__ {scalar_t__ maximum; scalar_t__ minimum; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int EINVAL ;







 int get_ctrl_id (int) ;
 scalar_t__* get_ctrl_ptr (struct maven_data*,int) ;
 int maven_compute_bwlevel (struct maven_data*,int*,int*) ;
 unsigned char maven_compute_deflicker (struct maven_data*) ;
 struct maven_gamma* maven_compute_gamma (struct maven_data*) ;
 TYPE_2__* maven_controls ;
 unsigned char maven_get_reg (int ,int) ;
 int maven_set_reg (int ,int,unsigned char) ;
 int maven_set_reg_pair (int ,int,int) ;

__attribute__((used)) static int maven_set_control (struct maven_data* md,
         struct v4l2_control *p) {
 int i;

 i = get_ctrl_id(p->id);
 if (i < 0) return -EINVAL;




 if (p->value == *get_ctrl_ptr(md, i)) return 0;




 if (p->value > maven_controls[i].desc.maximum) return -EINVAL;
 if (p->value < maven_controls[i].desc.minimum) return -EINVAL;




 *get_ctrl_ptr(md, i) = p->value;

 switch (p->id) {
  case 132:
  case 131:
  {
    int blacklevel, whitelevel;
    maven_compute_bwlevel(md, &blacklevel, &whitelevel);
    blacklevel = (blacklevel >> 2) | ((blacklevel & 3) << 8);
    whitelevel = (whitelevel >> 2) | ((whitelevel & 3) << 8);
    maven_set_reg_pair(md->client, 0x0e, blacklevel);
    maven_set_reg_pair(md->client, 0x1e, whitelevel);
  }
  break;
  case 128:
  {
    maven_set_reg(md->client, 0x20, p->value);
    maven_set_reg(md->client, 0x22, p->value);
  }
  break;
  case 129:
  {
    maven_set_reg(md->client, 0x25, p->value);
  }
  break;
  case 130:
  {
    const struct maven_gamma* g;
    g = maven_compute_gamma(md);
    maven_set_reg(md->client, 0x83, g->reg83);
    maven_set_reg(md->client, 0x84, g->reg84);
    maven_set_reg(md->client, 0x85, g->reg85);
    maven_set_reg(md->client, 0x86, g->reg86);
    maven_set_reg(md->client, 0x87, g->reg87);
    maven_set_reg(md->client, 0x88, g->reg88);
    maven_set_reg(md->client, 0x89, g->reg89);
    maven_set_reg(md->client, 0x8a, g->reg8a);
    maven_set_reg(md->client, 0x8b, g->reg8b);
  }
  break;
  case 133:
  {
   unsigned char val
     = maven_get_reg(md->client, 0x8d);
   if (p->value) val |= 0x10;
   else val &= ~0x10;
   maven_set_reg(md->client, 0x8d, val);
  }
  break;
  case 134:
  {
    maven_set_reg(md->client, 0x93, maven_compute_deflicker(md));
  }
  break;
 }


 return 0;
}
