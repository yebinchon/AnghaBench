
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int dummy; } ;
typedef int bitmap ;
typedef int basic_block ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int compute_always_reached (struct loop*,int *,int ,int ) ;
 int find_defs (struct loop*,int *) ;
 int find_exits (struct loop*,int *,int ,int ) ;
 int find_invariants_body (struct loop*,int *,int ,int ) ;
 int free (int *) ;
 int * get_loop_body_in_dom_order (struct loop*) ;
 int merge_identical_invariants () ;

__attribute__((used)) static void
find_invariants (struct loop *loop)
{
  bitmap may_exit = BITMAP_ALLOC (((void*)0));
  bitmap always_reached = BITMAP_ALLOC (((void*)0));
  bitmap has_exit = BITMAP_ALLOC (((void*)0));
  bitmap always_executed = BITMAP_ALLOC (((void*)0));
  basic_block *body = get_loop_body_in_dom_order (loop);

  find_exits (loop, body, may_exit, has_exit);
  compute_always_reached (loop, body, may_exit, always_reached);
  compute_always_reached (loop, body, has_exit, always_executed);

  find_defs (loop, body);
  find_invariants_body (loop, body, always_reached, always_executed);
  merge_identical_invariants ();

  BITMAP_FREE (always_reached);
  BITMAP_FREE (always_executed);
  BITMAP_FREE (may_exit);
  BITMAP_FREE (has_exit);
  free (body);
}
