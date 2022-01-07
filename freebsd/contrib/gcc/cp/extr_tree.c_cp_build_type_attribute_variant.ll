; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_build_type_attribute_variant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_build_type_attribute_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cp_build_type_attribute_variant(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @build_type_attribute_variant(i64 %6, i64 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @TREE_CODE(i64 %9)
  %11 = load i64, i64* @FUNCTION_TYPE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %21)
  %23 = call i64 @build_exception_variant(i64 %20, i64 %22)
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %19, %13, %2
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @CLASS_TYPE_P(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @gcc_assert(i32 %34)
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i64 @build_type_attribute_variant(i64, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_RAISES_EXCEPTIONS(i64) #1

declare dso_local i64 @build_exception_variant(i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
