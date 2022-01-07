; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_except_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_except_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @comp_except_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_except_types(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @same_type_p(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %69

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %67, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @cp_type_quals(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @cp_type_quals(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %69

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @TREE_CODE(i32 %26)
  %28 = load i64, i64* @POINTER_TYPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @POINTER_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TREE_TYPE(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @cp_type_quals(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @cp_type_quals(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %35
  store i32 0, i32* %4, align 4
  br label %69

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %30, %25
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @RECORD_TYPE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @TREE_CODE(i32 %55)
  %57 = load i64, i64* @RECORD_TYPE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @PUBLICLY_UNIQUELY_DERIVED_P(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %69

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %13
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %65, %59, %47, %24, %12
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i64 @cp_type_quals(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @PUBLICLY_UNIQUELY_DERIVED_P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
