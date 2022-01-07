; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_maybe_emit_chk_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_maybe_emit_chk_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%Hcall to %D will always overflow destination buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @maybe_emit_chk_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_emit_chk_warning(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TREE_OPERAND(i64 %12, i32 1)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %18 [
    i32 130, label %15
    i32 132, label %15
    i32 131, label %15
    i32 129, label %16
    i32 133, label %17
    i32 128, label %17
  ]

15:                                               ; preds = %2, %2, %2
  store i32 6, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  store i32 12, i32* %5, align 4
  br label %20

17:                                               ; preds = %2, %2
  store i32 10, i32* %5, align 4
  br label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @gcc_unreachable()
  br label %20

20:                                               ; preds = %18, %17, %16, %15
  %21 = load i64, i64* @NULL_TREE, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %45, %20
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %10, align 8
  br label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @TREE_CHAIN(i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %24

50:                                               ; preds = %30
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %50
  br label %106

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @TREE_VALUE(i64 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @TREE_VALUE(i64 %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @host_integerp(i64 %62, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @integer_all_onesp(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %57
  br label %106

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @c_strlen(i64 %74, i32 1)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @host_integerp(i64 %79, i32 1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @tree_int_cst_lt(i64 %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %78, %73
  br label %106

88:                                               ; preds = %82
  br label %100

89:                                               ; preds = %70
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @host_integerp(i64 %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i64 @tree_int_cst_lt(i64 %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93, %89
  br label %106

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @EXPR_LOCATION(i64 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i64, i64* %3, align 8
  %104 = call i32 @get_callee_fndecl(i64 %103)
  %105 = call i32 @warning(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %104)
  br label %106

106:                                              ; preds = %100, %98, %87, %69, %56
  ret void
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i64 @integer_all_onesp(i64) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @EXPR_LOCATION(i64) #1

declare dso_local i32 @warning(i32, i8*, i32*, i32) #1

declare dso_local i32 @get_callee_fndecl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
