
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expand_or_defer_fn (int ) ;
 int finish_function (int ) ;
 int pop_from_top_level () ;

__attribute__((used)) static void
end_cleanup_fn (void)
{
  expand_or_defer_fn (finish_function (0));

  pop_from_top_level ();
}
