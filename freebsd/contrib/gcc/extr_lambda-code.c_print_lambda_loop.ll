; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_print_lambda_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_print_lambda_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"  step size = %d \0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  linear offset: \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  lower bound: \0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"  upper bound: \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_lambda_loop(i32* %0, i32 %1, i32 %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 %4, i8* %10, align 1
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32* @LL_LINEAR_OFFSET(i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @LL_STEP(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8, i8* %10, align 1
  %32 = call i32 @print_lambda_linear_expression(i32* %27, i32* %28, i32 %29, i32 %30, i8 signext %31)
  br label %33

33:                                               ; preds = %24, %5
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @LL_LOWER_BOUND(i32 %36)
  store i32* %37, i32** %12, align 8
  br label %38

38:                                               ; preds = %48, %33
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i8, i8* %10, align 1
  %47 = call i32 @print_lambda_linear_expression(i32* %42, i32* %43, i32 %44, i32 %45, i8 signext %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %12, align 8
  %50 = call i32* @LLE_NEXT(i32* %49)
  store i32* %50, i32** %12, align 8
  br label %38

51:                                               ; preds = %38
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %7, align 4
  %55 = call i32* @LL_UPPER_BOUND(i32 %54)
  store i32* %55, i32** %12, align 8
  br label %56

56:                                               ; preds = %66, %51
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i8, i8* %10, align 1
  %65 = call i32 @print_lambda_linear_expression(i32* %60, i32* %61, i32 %62, i32 %63, i8 signext %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %12, align 8
  %68 = call i32* @LLE_NEXT(i32* %67)
  store i32* %68, i32** %12, align 8
  br label %56

69:                                               ; preds = %56
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @LL_LINEAR_OFFSET(i32) #1

declare dso_local i32 @LL_STEP(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_lambda_linear_expression(i32*, i32*, i32, i32, i8 signext) #1

declare dso_local i32* @LL_LOWER_BOUND(i32) #1

declare dso_local i32* @LLE_NEXT(i32*) #1

declare dso_local i32* @LL_UPPER_BOUND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
