; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_decl_init_priority_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_decl_init_priority_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_int_map = type { i16, i32 }

@init_priority_for_decl = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decl_init_priority_insert(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.tree_int_map*, align 8
  %6 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %7 = call %struct.tree_int_map* @ggc_alloc(i32 8)
  store %struct.tree_int_map* %7, %struct.tree_int_map** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.tree_int_map*, %struct.tree_int_map** %5, align 8
  %10 = getelementptr inbounds %struct.tree_int_map, %struct.tree_int_map* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i16, i16* %4, align 2
  %12 = load %struct.tree_int_map*, %struct.tree_int_map** %5, align 8
  %13 = getelementptr inbounds %struct.tree_int_map, %struct.tree_int_map* %12, i32 0, i32 0
  store i16 %11, i16* %13, align 4
  %14 = load i32, i32* @init_priority_for_decl, align 4
  %15 = load %struct.tree_int_map*, %struct.tree_int_map** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @htab_hash_pointer(i32 %16)
  %18 = load i32, i32* @INSERT, align 4
  %19 = call i8** @htab_find_slot_with_hash(i32 %14, %struct.tree_int_map* %15, i32 %17, i32 %18)
  store i8** %19, i8*** %6, align 8
  %20 = load %struct.tree_int_map*, %struct.tree_int_map** %5, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = bitcast i8** %21 to %struct.tree_int_map**
  store %struct.tree_int_map* %20, %struct.tree_int_map** %22, align 8
  ret void
}

declare dso_local %struct.tree_int_map* @ggc_alloc(i32) #1

declare dso_local i8** @htab_find_slot_with_hash(i32, %struct.tree_int_map*, i32, i32) #1

declare dso_local i32 @htab_hash_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
