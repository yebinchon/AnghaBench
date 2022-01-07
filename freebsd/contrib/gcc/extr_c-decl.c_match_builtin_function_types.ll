; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_match_builtin_function_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_match_builtin_function_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @match_builtin_function_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @match_builtin_function_types(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @TREE_TYPE(i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @TYPE_MODE(i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TYPE_MODE(i64 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %72

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TYPE_ARG_TYPES(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TYPE_ARG_TYPES(i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %59, %22
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %64

36:                                               ; preds = %34
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TREE_VALUE(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @TREE_VALUE(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @TREE_VALUE(i64 %51)
  %53 = call i64 @TYPE_MODE(i64 %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @TREE_VALUE(i64 %54)
  %56 = call i64 @TYPE_MODE(i64 %55)
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %46, %42, %39, %36
  store i64 0, i64* %3, align 8
  br label %72

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @TREE_CHAIN(i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @TREE_CHAIN(i64 %62)
  store i64 %63, i64* %8, align 8
  br label %28

64:                                               ; preds = %34
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @build_function_type(i64 %65, i64 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @TYPE_ATTRIBUTES(i64 %69)
  %71 = call i64 @build_type_attribute_variant(i64 %68, i32 %70)
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %64, %58, %21
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_MODE(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_function_type(i64, i64) #1

declare dso_local i64 @build_type_attribute_variant(i64, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
