
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int verify_call_clobbering () ;
 int verify_flow_insensitive_alias_info () ;
 int verify_flow_sensitive_alias_info () ;
 int verify_name_tags () ;

__attribute__((used)) static void
verify_alias_info (void)
{
  verify_flow_sensitive_alias_info ();
  verify_name_tags ();
  verify_call_clobbering ();
  verify_flow_insensitive_alias_info ();
}
