
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct buffer {int dummy; } ;


 int RHEL_MAJOR ;
 int RHEL_MINOR ;
 int buf_printf (struct buffer*,char*,...) ;

__attribute__((used)) static void add_rheldata(struct buffer *b, struct module *mod)
{
 buf_printf(b, "\n");
 buf_printf(b, "static const struct rheldata _rheldata __used\n");
 buf_printf(b, "__attribute__((section(\".rheldata\"))) = {\n");
 buf_printf(b, "	.rhel_major = %d,\n", RHEL_MAJOR);
 buf_printf(b, "	.rhel_minor = %d,\n", RHEL_MINOR);
 buf_printf(b, "};\n");
}
