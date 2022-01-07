; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_default_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_default_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_tree_map = type { i32, i32 }

@default_defs = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_def(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.int_tree_map*, align 8
  %5 = alloca %struct.int_tree_map, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @SSA_VAR_P(i32 %6)
  %8 = call i32 @gcc_assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @DECL_UID(i32 %9)
  %11 = getelementptr inbounds %struct.int_tree_map, %struct.int_tree_map* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @default_defs, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DECL_UID(i32 %13)
  %15 = call i64 @htab_find_with_hash(i32 %12, %struct.int_tree_map* %5, i32 %14)
  %16 = inttoptr i64 %15 to %struct.int_tree_map*
  store %struct.int_tree_map* %16, %struct.int_tree_map** %4, align 8
  %17 = load %struct.int_tree_map*, %struct.int_tree_map** %4, align 8
  %18 = icmp ne %struct.int_tree_map* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.int_tree_map*, %struct.int_tree_map** %4, align 8
  %21 = getelementptr inbounds %struct.int_tree_map, %struct.int_tree_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @NULL_TREE, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SSA_VAR_P(i32) #1

declare dso_local i32 @DECL_UID(i32) #1

declare dso_local i64 @htab_find_with_hash(i32, %struct.int_tree_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
