
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_arg {int dummy; } ;
struct event_format {int dummy; } ;
typedef enum event_type { ____Placeholder_event_type } event_type ;


 int process_arg_token (struct event_format*,struct print_arg*,char**,int) ;
 int read_token (char**) ;

__attribute__((used)) static enum event_type
process_arg(struct event_format *event, struct print_arg *arg, char **tok)
{
 enum event_type type;
 char *token;

 type = read_token(&token);
 *tok = token;

 return process_arg_token(event, arg, tok, type);
}
