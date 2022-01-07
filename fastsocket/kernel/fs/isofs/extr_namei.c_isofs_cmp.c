
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {char const* name; int len; } ;
struct TYPE_4__ {int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_op; } ;
struct TYPE_3__ {int (* d_compare ) (struct dentry*,TYPE_2__*,struct qstr*) ;} ;


 int stub1 (struct dentry*,TYPE_2__*,struct qstr*) ;

__attribute__((used)) static int
isofs_cmp(struct dentry *dentry, const char *compare, int dlen)
{
 struct qstr qstr;

 if (!compare)
  return 1;


 if (dlen == 1) {

  if (compare[0] == 0) {
   if (!dentry->d_name.len)
    return 0;
   compare = ".";
  } else if (compare[0] == 1) {
   compare = "..";
   dlen = 2;
  }
 }

 qstr.name = compare;
 qstr.len = dlen;
 return dentry->d_op->d_compare(dentry, &dentry->d_name, &qstr);
}
