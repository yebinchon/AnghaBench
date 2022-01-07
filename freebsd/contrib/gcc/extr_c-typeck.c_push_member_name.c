
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int s; } ;


 scalar_t__ DECL_NAME (int ) ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 int PUSH_SPELLING (int ,char const* const,int ) ;
 int SPELLING_MEMBER ;
 TYPE_1__ u ;

__attribute__((used)) static void
push_member_name (tree decl)
{
  const char *const string
    = DECL_NAME (decl) ? IDENTIFIER_POINTER (DECL_NAME (decl)) : "<anonymous>";
  PUSH_SPELLING (SPELLING_MEMBER, string, u.s);
}
