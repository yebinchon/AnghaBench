; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_add_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_map = type { i32, i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_key(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.tree_map*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.tree_map* @pool_alloc(i32 %9)
  store %struct.tree_map* %10, %struct.tree_map** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.tree_map*, %struct.tree_map** %8, align 8
  %13 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @NULL_TREE, align 4
  %15 = load %struct.tree_map*, %struct.tree_map** %8, align 8
  %16 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.tree_map*, %struct.tree_map** %8, align 8
  %18 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htab_hash_pointer(i32 %19)
  %21 = load %struct.tree_map*, %struct.tree_map** %8, align 8
  %22 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.tree_map*, %struct.tree_map** %8, align 8
  %25 = load i32, i32* @INSERT, align 4
  %26 = call i8** @htab_find_slot(i32 %23, %struct.tree_map* %24, i32 %25)
  store i8** %26, i8*** %7, align 8
  %27 = load %struct.tree_map*, %struct.tree_map** %8, align 8
  %28 = bitcast %struct.tree_map* %27 to i8*
  %29 = load i8**, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  ret void
}

declare dso_local %struct.tree_map* @pool_alloc(i32) #1

declare dso_local i32 @htab_hash_pointer(i32) #1

declare dso_local i8** @htab_find_slot(i32, %struct.tree_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
