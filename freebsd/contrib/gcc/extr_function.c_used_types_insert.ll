; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_used_types_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_used_types_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i64 0, align 8
@debug_info_level = common dso_local global i64 0, align 8
@DINFO_LEVEL_NONE = common dso_local global i64 0, align 8
@cfun = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @used_types_insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %14, %1
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @POINTER_TYPE_P(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @ARRAY_TYPE, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i1 [ true, %3 ], [ %11, %7 ]
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %3

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @TYPE_MAIN_VARIANT(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i64, i64* @debug_info_level, align 8
  %21 = load i64, i64* @DINFO_LEVEL_NONE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @cfun, align 4
  %26 = call i32 @used_types_insert_helper(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %17
  ret void
}

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @used_types_insert_helper(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
