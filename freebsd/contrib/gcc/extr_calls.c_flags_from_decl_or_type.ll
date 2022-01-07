; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_flags_from_decl_or_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_flags_from_decl_or_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECF_MALLOC = common dso_local global i32 0, align 4
@ECF_RETURNS_TWICE = common dso_local global i32 0, align 4
@ECF_PURE = common dso_local global i32 0, align 4
@ECF_NOVOPS = common dso_local global i32 0, align 4
@ECF_NOTHROW = common dso_local global i32 0, align 4
@ECF_CONST = common dso_local global i32 0, align 4
@ECF_NORETURN = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@ECF_SP_DEPRESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flags_from_decl_or_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @DECL_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %67

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @DECL_IS_MALLOC(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @ECF_MALLOC, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @DECL_IS_RETURNS_TWICE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @ECF_RETURNS_TWICE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @DECL_IS_PURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @ECF_PURE, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @DECL_IS_NOVOPS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @ECF_NOVOPS, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %2, align 4
  %45 = call i64 @TREE_NOTHROW(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @ECF_NOTHROW, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %2, align 4
  %53 = call i64 @TREE_READONLY(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = call i64 @TREE_THIS_VOLATILE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @ECF_CONST, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %55, %51
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @special_function_p(i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %84

67:                                               ; preds = %1
  %68 = load i32, i32* %2, align 4
  %69 = call i64 @TYPE_P(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i32, i32* %2, align 4
  %73 = call i64 @TYPE_READONLY(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32, i32* %2, align 4
  %77 = call i64 @TREE_THIS_VOLATILE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ECF_CONST, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %75, %71, %67
  br label %84

84:                                               ; preds = %83, %63
  %85 = load i32, i32* %2, align 4
  %86 = call i64 @TREE_THIS_VOLATILE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @ECF_NORETURN, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @TREE_CODE(i32 %93)
  %95 = load i64, i64* @FUNCTION_TYPE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @TYPE_RETURNS_STACK_DEPRESSED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i32, i32* @ECF_SP_DEPRESSED, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* @ECF_PURE, align 4
  %106 = load i32, i32* @ECF_CONST, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %101, %97, %92
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @DECL_IS_MALLOC(i32) #1

declare dso_local i64 @DECL_IS_RETURNS_TWICE(i32) #1

declare dso_local i64 @DECL_IS_PURE(i32) #1

declare dso_local i64 @DECL_IS_NOVOPS(i32) #1

declare dso_local i64 @TREE_NOTHROW(i32) #1

declare dso_local i64 @TREE_READONLY(i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i32 @special_function_p(i32, i32) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i64 @TYPE_READONLY(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TYPE_RETURNS_STACK_DEPRESSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
