; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_referenced_var_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_referenced_var_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_tree_map = type { i32, i32 }

@referenced_vars = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @referenced_var_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.int_tree_map*, align 8
  %5 = alloca %struct.int_tree_map, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.int_tree_map, %struct.int_tree_map* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @referenced_vars, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @htab_find_with_hash(i32 %8, %struct.int_tree_map* %5, i32 %9)
  %11 = inttoptr i64 %10 to %struct.int_tree_map*
  store %struct.int_tree_map* %11, %struct.int_tree_map** %4, align 8
  %12 = load %struct.int_tree_map*, %struct.int_tree_map** %4, align 8
  %13 = icmp ne %struct.int_tree_map* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi i1 [ true, %1 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load %struct.int_tree_map*, %struct.int_tree_map** %4, align 8
  %22 = icmp ne %struct.int_tree_map* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.int_tree_map*, %struct.int_tree_map** %4, align 8
  %25 = getelementptr inbounds %struct.int_tree_map, %struct.int_tree_map* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @NULL_TREE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @htab_find_with_hash(i32, %struct.int_tree_map*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
