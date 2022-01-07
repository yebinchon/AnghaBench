; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_evaluate_conditional.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_evaluate_conditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WARN_STRICT_OVERFLOW_CONDITIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"assuming signed overflow does not occur when simplifying conditional to constant\00", align 1
@WARN_STRICT_OVERFLOW_COMPARISON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"assuming signed overflow does not occur when simplifying conditional\00", align 1
@input_location = common dso_local global i32 0, align 4
@OPT_Wstrict_overflow = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%H%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vrp_evaluate_conditional(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @vrp_evaluate_conditional_warnv(i64 %10, i32 1, i32* %5)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @is_gimple_min_invariant(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @WARN_STRICT_OVERFLOW_CONDITIONAL, align 4
  store i32 %22, i32* %7, align 4
  %23 = call i8* @G_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @WARN_STRICT_OVERFLOW_COMPARISON, align 4
  store i32 %25, i32* %7, align 4
  %26 = call i8* @G_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @issue_strict_overflow_warning(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @EXPR_HAS_LOCATION(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @input_location, align 4
  store i32 %36, i32* %9, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @EXPR_LOCATION(i64 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i32, i32* @OPT_Wstrict_overflow, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @warning(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %9, i8* %42)
  br label %44

44:                                               ; preds = %40, %27
  br label %45

45:                                               ; preds = %44, %14, %2
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i64 @vrp_evaluate_conditional_warnv(i64, i32, i32*) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i8* @G_(i8*) #1

declare dso_local i64 @issue_strict_overflow_warning(i32) #1

declare dso_local i32 @EXPR_HAS_LOCATION(i64) #1

declare dso_local i32 @EXPR_LOCATION(i64) #1

declare dso_local i32 @warning(i32, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
