; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_common_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_common_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@BOOLEAN_TYPE = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @common_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @ENUMERAL_TYPE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TYPE_PRECISION(i32 %11)
  %13 = call i32 @c_common_type_for_size(i32 %12, i32 1)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @ENUMERAL_TYPE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TYPE_PRECISION(i32 %20)
  %22 = call i32 @c_common_type_for_size(i32 %21, i32 1)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @TREE_CODE(i32 %24)
  %26 = load i64, i64* @BOOLEAN_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @BOOLEAN_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @boolean_type_node, align 4
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @BOOLEAN_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @BOOLEAN_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @c_common_type(i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %47, %40, %33
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @c_common_type_for_size(i32, i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @c_common_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
