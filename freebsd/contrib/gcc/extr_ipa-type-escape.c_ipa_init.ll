; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_ipa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_ipa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipa_obstack = common dso_local global i32 0, align 4
@global_types_exposed_parameter = common dso_local global i8* null, align 8
@global_types_full_escape = common dso_local global i8* null, align 8
@global_types_seen = common dso_local global i8* null, align 8
@results_of_malloc = common dso_local global i8* null, align 8
@splay_tree_compare_ints = common dso_local global i32 0, align 4
@uid_to_canon_type = common dso_local global i8* null, align 8
@compare_type_brand = common dso_local global i32 0, align 4
@all_canon_types = common dso_local global i8* null, align 8
@splay_tree_compare_pointers = common dso_local global i32 0, align 4
@type_to_canon_type = common dso_local global i8* null, align 8
@uid_to_subtype_map = common dso_local global i8* null, align 8
@uid_to_addressof_down_map = common dso_local global i8* null, align 8
@uid_to_addressof_up_map = common dso_local global i8* null, align 8
@visited_nodes = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipa_init() #0 {
  %1 = call i32 @bitmap_obstack_initialize(i32* @ipa_obstack)
  %2 = call i8* @BITMAP_ALLOC(i32* @ipa_obstack)
  store i8* %2, i8** @global_types_exposed_parameter, align 8
  %3 = call i8* @BITMAP_ALLOC(i32* @ipa_obstack)
  store i8* %3, i8** @global_types_full_escape, align 8
  %4 = call i8* @BITMAP_ALLOC(i32* @ipa_obstack)
  store i8* %4, i8** @global_types_seen, align 8
  %5 = call i8* @BITMAP_ALLOC(i32* @ipa_obstack)
  store i8* %5, i8** @results_of_malloc, align 8
  %6 = load i32, i32* @splay_tree_compare_ints, align 4
  %7 = call i8* @splay_tree_new(i32 %6, i32 0, i32 0)
  store i8* %7, i8** @uid_to_canon_type, align 8
  %8 = load i32, i32* @compare_type_brand, align 4
  %9 = call i8* @splay_tree_new(i32 %8, i32 0, i32 0)
  store i8* %9, i8** @all_canon_types, align 8
  %10 = load i32, i32* @splay_tree_compare_pointers, align 4
  %11 = call i8* @splay_tree_new(i32 %10, i32 0, i32 0)
  store i8* %11, i8** @type_to_canon_type, align 8
  %12 = load i32, i32* @splay_tree_compare_ints, align 4
  %13 = call i8* @splay_tree_new(i32 %12, i32 0, i32 0)
  store i8* %13, i8** @uid_to_subtype_map, align 8
  %14 = load i32, i32* @splay_tree_compare_ints, align 4
  %15 = call i8* @splay_tree_new(i32 %14, i32 0, i32 0)
  store i8* %15, i8** @uid_to_addressof_down_map, align 8
  %16 = load i32, i32* @splay_tree_compare_ints, align 4
  %17 = call i8* @splay_tree_new(i32 %16, i32 0, i32 0)
  store i8* %17, i8** @uid_to_addressof_up_map, align 8
  %18 = call i32 (...) @pointer_set_create()
  store i32 %18, i32* @visited_nodes, align 4
  store i32 1, i32* @initialized, align 4
  ret void
}

declare dso_local i32 @bitmap_obstack_initialize(i32*) #1

declare dso_local i8* @BITMAP_ALLOC(i32*) #1

declare dso_local i8* @splay_tree_new(i32, i32, i32) #1

declare dso_local i32 @pointer_set_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
