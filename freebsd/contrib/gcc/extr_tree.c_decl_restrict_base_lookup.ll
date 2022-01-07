; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_decl_restrict_base_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_decl_restrict_base_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_map = type { i32, i32 }

@restrict_base_for_decl = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decl_restrict_base_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_map*, align 8
  %4 = alloca %struct.tree_map, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %4, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @restrict_base_for_decl, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @htab_hash_pointer(i32 %8)
  %10 = call %struct.tree_map* @htab_find_with_hash(i32 %7, %struct.tree_map* %4, i32 %9)
  store %struct.tree_map* %10, %struct.tree_map** %3, align 8
  %11 = load %struct.tree_map*, %struct.tree_map** %3, align 8
  %12 = icmp ne %struct.tree_map* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.tree_map*, %struct.tree_map** %3, align 8
  %15 = getelementptr inbounds %struct.tree_map, %struct.tree_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NULL_TREE, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %16, %13 ], [ %18, %17 ]
  ret i32 %20
}

declare dso_local %struct.tree_map* @htab_find_with_hash(i32, %struct.tree_map*, i32) #1

declare dso_local i32 @htab_hash_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
