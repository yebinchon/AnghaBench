; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_ipa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_ipa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, %struct.cgraph_node* }

@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@memory_identifier_string = common dso_local global i32 0, align 4
@splay_tree_compare_ints = common dso_local global i32 0, align 4
@reference_vars_to_consider = common dso_local global i32 0, align 4
@ipa_obstack = common dso_local global i32 0, align 4
@module_statics_escape = common dso_local global i8* null, align 8
@module_statics_written = common dso_local global i8* null, align 8
@all_module_statics = common dso_local global i8* null, align 8
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@visited_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipa_init() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = call i32 @build_string(i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @memory_identifier_string, align 4
  %3 = load i32, i32* @splay_tree_compare_ints, align 4
  %4 = call i32 @splay_tree_new_ggc(i32 %3)
  store i32 %4, i32* @reference_vars_to_consider, align 4
  %5 = call i32 @bitmap_obstack_initialize(i32* @ipa_obstack)
  %6 = call i8* @BITMAP_ALLOC(i32* @ipa_obstack)
  store i8* %6, i8** @module_statics_escape, align 8
  %7 = call i8* @BITMAP_ALLOC(i32* @ipa_obstack)
  store i8* %7, i8** @module_statics_written, align 8
  %8 = call i8* @BITMAP_ALLOC(i32* @ipa_obstack)
  store i8* %8, i8** @all_module_statics, align 8
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %9, %struct.cgraph_node** %1, align 8
  br label %10

10:                                               ; preds = %18, %0
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %12 = icmp ne %struct.cgraph_node* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @has_proper_scope_for_analysis(i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %20 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i32 0, i32 1
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %20, align 8
  store %struct.cgraph_node* %21, %struct.cgraph_node** %1, align 8
  br label %10

22:                                               ; preds = %10
  %23 = call i32 (...) @pointer_set_create()
  store i32 %23, i32* @visited_nodes, align 4
  ret void
}

declare dso_local i32 @build_string(i32, i8*) #1

declare dso_local i32 @splay_tree_new_ggc(i32) #1

declare dso_local i32 @bitmap_obstack_initialize(i32*) #1

declare dso_local i8* @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @has_proper_scope_for_analysis(i32) #1

declare dso_local i32 @pointer_set_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
