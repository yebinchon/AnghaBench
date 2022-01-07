
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdep {int semantics; char* extra; int waw_special; int regnotes; int nregs; int regs; int chknotes; int nchks; int chks; } ;


 struct rdep* insert_resource (char const*,int) ;
 int parse_resource_users (char const*,int *,int *,int *) ;

__attribute__((used)) static void
add_dep (const char *name, const char *chk, const char *reg,
         int semantics, int mode, char *extra, int flag)
{
  struct rdep *rs;

  rs = insert_resource (name, mode);

  parse_resource_users (chk, &rs->chks, &rs->nchks, &rs->chknotes);
  parse_resource_users (reg, &rs->regs, &rs->nregs, &rs->regnotes);

  rs->semantics = semantics;
  rs->extra = extra;
  rs->waw_special = flag;
}
