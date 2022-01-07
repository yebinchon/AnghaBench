; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_heapvar_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_heapvar_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_map = type { i32, i32 }

@heapvar_for_stmt = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @heapvar_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heapvar_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_map*, align 8
  %5 = alloca %struct.tree_map, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %5, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @heapvar_for_stmt, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @htab_hash_pointer(i32 %9)
  %11 = call %struct.tree_map* @htab_find_with_hash(i32 %8, %struct.tree_map* %5, i32 %10)
  store %struct.tree_map* %11, %struct.tree_map** %4, align 8
  %12 = load %struct.tree_map*, %struct.tree_map** %4, align 8
  %13 = icmp ne %struct.tree_map* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.tree_map*, %struct.tree_map** %4, align 8
  %16 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @NULL_TREE, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.tree_map* @htab_find_with_hash(i32, %struct.tree_map*, i32) #1

declare dso_local i32 @htab_hash_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
