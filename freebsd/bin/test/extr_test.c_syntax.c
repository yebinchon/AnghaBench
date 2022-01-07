
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char const*,...) ;

__attribute__((used)) static void
syntax(const char *op, const char *msg)
{

 if (op && *op)
  error("%s: %s", op, msg);
 else
  error("%s", msg);
}
