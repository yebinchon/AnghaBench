; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-objcp-common.c_cxx_types_compatible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-objcp-common.c_cxx_types_compatible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxx_types_compatible_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @same_type_ignoring_top_level_qualifiers_p(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @POINTER_TYPE_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @POINTER_TYPE_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @TYPE_MODE(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @TYPE_MODE(i32 %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @TYPE_REF_CAN_ALIAS_ALL(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @TYPE_REF_CAN_ALIAS_ALL(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @TREE_TYPE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  %36 = call i64 @same_type_p(i32 %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %31, %25, %19, %15, %11
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @same_type_ignoring_top_level_qualifiers_p(i32, i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i64 @TYPE_REF_CAN_ALIAS_ALL(i32) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
