
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*) ;

__attribute__((used)) static void display_error(int err)
{
 switch (err) {
 case 129:
  pr_err("unwind: Only supports local.\n");
  break;
 case 128:
  pr_err("unwind: Unspecified error.\n");
  break;
 case 130:
  pr_err("unwind: Register unavailable.\n");
  break;
 default:
  break;
 }
}
