
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_type { ____Placeholder_event_type } event_type ;


 int __read_token (char**) ;
 int init_input_buf (char const*,int ) ;
 char const* input_buf ;
 unsigned long long input_buf_ptr ;
 unsigned long long input_buf_siz ;
 int strlen (char const*) ;

__attribute__((used)) static enum event_type force_token(const char *str, char **tok)
{
 const char *save_input_buf;
 unsigned long long save_input_buf_ptr;
 unsigned long long save_input_buf_siz;
 enum event_type type;


 save_input_buf = input_buf;
 save_input_buf_ptr = input_buf_ptr;
 save_input_buf_siz = input_buf_siz;

 init_input_buf(str, strlen(str));

 type = __read_token(tok);


 input_buf = save_input_buf;
 input_buf_ptr = save_input_buf_ptr;
 input_buf_siz = save_input_buf_siz;

 return type;
}
