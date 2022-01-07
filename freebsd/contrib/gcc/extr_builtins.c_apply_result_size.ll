; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_apply_result_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_apply_result_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apply_result_size.size = internal global i32 -1, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_raw_mode = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@apply_result_mode = common dso_local global i32* null, align 8
@APPLY_RESULT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @apply_result_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_result_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @apply_result_size.size, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %0
  store i32 0, i32* @apply_result_size.size, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %59, %6
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %62

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @FUNCTION_VALUE_REGNO_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32*, i32** @reg_raw_mode, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @GET_MODE_ALIGNMENT(i32 %26)
  %28 = load i32, i32* @BITS_PER_UNIT, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @apply_result_size.size, align 4
  %31 = load i32, i32* %1, align 4
  %32 = srem i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %15
  %35 = load i32, i32* @apply_result_size.size, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @CEIL(i32 %35, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* @apply_result_size.size, align 4
  br label %40

40:                                               ; preds = %34, %15
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @GET_MODE_SIZE(i32 %41)
  %43 = load i32, i32* @apply_result_size.size, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* @apply_result_size.size, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32*, i32** @apply_result_mode, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %58

52:                                               ; preds = %11
  %53 = load i32, i32* @VOIDmode, align 4
  %54 = load i32*, i32** @apply_result_mode, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %7

62:                                               ; preds = %7
  br label %63

63:                                               ; preds = %62, %0
  %64 = load i32, i32* @apply_result_size.size, align 4
  ret i32 %64
}

declare dso_local i64 @FUNCTION_VALUE_REGNO_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
