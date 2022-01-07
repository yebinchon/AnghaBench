
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_class {long ctokens; long tokens; } ;
typedef enum htb_cmode { ____Placeholder_htb_cmode } htb_cmode ;


 int HTB_CANT_SEND ;
 int HTB_CAN_SEND ;
 int HTB_MAY_BORROW ;
 long htb_hiwater (struct htb_class*) ;
 long htb_lowater (struct htb_class*) ;

__attribute__((used)) static inline enum htb_cmode
htb_class_mode(struct htb_class *cl, long *diff)
{
 long toks;

 if ((toks = (cl->ctokens + *diff)) < htb_lowater(cl)) {
  *diff = -toks;
  return HTB_CANT_SEND;
 }

 if ((toks = (cl->tokens + *diff)) >= htb_hiwater(cl))
  return HTB_CAN_SEND;

 *diff = -toks;
 return HTB_MAY_BORROW;
}
