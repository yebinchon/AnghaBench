; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_function_parameter_and_return_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_check_function_parameter_and_return_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@void_type_node = common dso_local global i64 0, align 8
@EXPOSED_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @check_function_parameter_and_return_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_function_parameter_and_return_types(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_TYPE(i64 %9)
  %11 = call i64 @TYPE_ARG_TYPES(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  %16 = call i64 @TYPE_ARG_TYPES(i64 %15)
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %38, %13
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @TREE_VALUE(i64 %21)
  %23 = load i64, i64* @void_type_node, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_VALUE(i64 %28)
  %30 = call i64 @get_canon_type(i64 %29, i32 0, i32 0)
  store i64 %30, i64* %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @EXPOSED_PARAMETER, align 4
  %36 = call i32 @mark_interesting_type(i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @TREE_CHAIN(i64 %39)
  store i64 %40, i64* %5, align 8
  br label %17

41:                                               ; preds = %25
  br label %63

42:                                               ; preds = %2
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @DECL_ARGUMENTS(i64 %43)
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %59, %42
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = call i64 @get_canon_type(i64 %50, i32 0, i32 0)
  store i64 %51, i64* %7, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @EXPOSED_PARAMETER, align 4
  %57 = call i32 @mark_interesting_type(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @TREE_CHAIN(i64 %60)
  store i64 %61, i64* %5, align 8
  br label %45

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @TREE_TYPE(i64 %67)
  %69 = call i64 @TREE_TYPE(i64 %68)
  %70 = call i64 @get_canon_type(i64 %69, i32 0, i32 0)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* @EXPOSED_PARAMETER, align 4
  %73 = call i32 @mark_interesting_type(i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %63
  ret void
}

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @get_canon_type(i64, i32, i32) #1

declare dso_local i32 @mark_interesting_type(i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
