; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_pod_type_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_pod_type_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pod_type_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @strip_array_types(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @error_mark_node, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @INTEGRAL_TYPE_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %47

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @FLOAT_TYPE_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %47

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @TYPE_PTR_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %47

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %47

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @VECTOR_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %47

36:                                               ; preds = %30
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @CLASS_TYPE_P(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %47

41:                                               ; preds = %36
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @CLASSTYPE_NON_POD_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %47

46:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45, %40, %35, %29, %24, %19, %14, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @strip_array_types(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @FLOAT_TYPE_P(i64) #1

declare dso_local i64 @TYPE_PTR_P(i64) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @CLASSTYPE_NON_POD_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
