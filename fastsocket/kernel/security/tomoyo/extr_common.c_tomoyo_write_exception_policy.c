
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {char* write_buf; } ;


 int EINVAL ;
 int TOMOYO_KEYWORD_ALIAS ;
 int TOMOYO_KEYWORD_ALLOW_READ ;
 int TOMOYO_KEYWORD_DELETE ;
 int TOMOYO_KEYWORD_DENY_REWRITE ;
 int TOMOYO_KEYWORD_FILE_PATTERN ;
 int TOMOYO_KEYWORD_INITIALIZE_DOMAIN ;
 int TOMOYO_KEYWORD_KEEP_DOMAIN ;
 int TOMOYO_KEYWORD_NO_INITIALIZE_DOMAIN ;
 int TOMOYO_KEYWORD_NO_KEEP_DOMAIN ;
 int tomoyo_str_starts (char**,int ) ;
 int tomoyo_write_alias_policy (char*,int) ;
 int tomoyo_write_domain_initializer_policy (char*,int,int) ;
 int tomoyo_write_domain_keeper_policy (char*,int,int) ;
 int tomoyo_write_globally_readable_policy (char*,int) ;
 int tomoyo_write_no_rewrite_policy (char*,int) ;
 int tomoyo_write_pattern_policy (char*,int) ;

__attribute__((used)) static int tomoyo_write_exception_policy(struct tomoyo_io_buffer *head)
{
 char *data = head->write_buf;
 bool is_delete = tomoyo_str_starts(&data, TOMOYO_KEYWORD_DELETE);

 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_KEEP_DOMAIN))
  return tomoyo_write_domain_keeper_policy(data, 0,
        is_delete);
 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_NO_KEEP_DOMAIN))
  return tomoyo_write_domain_keeper_policy(data, 1, is_delete);
 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_INITIALIZE_DOMAIN))
  return tomoyo_write_domain_initializer_policy(data, 0,
             is_delete);
 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_NO_INITIALIZE_DOMAIN))
  return tomoyo_write_domain_initializer_policy(data, 1,
             is_delete);
 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_ALIAS))
  return tomoyo_write_alias_policy(data, is_delete);
 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_ALLOW_READ))
  return tomoyo_write_globally_readable_policy(data, is_delete);
 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_FILE_PATTERN))
  return tomoyo_write_pattern_policy(data, is_delete);
 if (tomoyo_str_starts(&data, TOMOYO_KEYWORD_DENY_REWRITE))
  return tomoyo_write_no_rewrite_policy(data, is_delete);
 return -EINVAL;
}
