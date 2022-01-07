; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_array_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_array_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @comp_array_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_array_types(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %79

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @TREE_TYPE(i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @TREE_TYPE(i64 %19)
  %21 = call i32 @same_type_p(i32 %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %79

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @TYPE_DOMAIN(i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @TYPE_DOMAIN(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %79

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %4, align 4
  br label %79

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @TYPE_MIN_VALUE(i64 %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @TYPE_MIN_VALUE(i64 %44)
  %46 = call i32 @cp_tree_equal(i64 %43, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %79

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @TYPE_MAX_VALUE(i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @TYPE_MAX_VALUE(i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* @processing_template_decl, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = call i32 @abi_version_at_least(i32 2)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @value_dependent_expression_p(i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @value_dependent_expression_p(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @fold(i64 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @fold(i64 %70)
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %67, %63, %59, %56, %49
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @cp_tree_equal(i64 %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %79

78:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %77, %48, %39, %32, %23, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i32 @cp_tree_equal(i64, i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i32 @abi_version_at_least(i32) #1

declare dso_local i32 @value_dependent_expression_p(i64) #1

declare dso_local i64 @fold(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
