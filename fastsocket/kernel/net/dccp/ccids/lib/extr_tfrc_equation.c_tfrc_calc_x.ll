; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_tfrc_equation.c_tfrc_calc_x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_tfrc_equation.c_tfrc_calc_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"WARNING: RTT is 0, returning maximum X_calc.\00", align 1
@TFRC_CALC_X_SPLIT = common dso_local global i32 0, align 4
@TFRC_SMALLEST_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Value of p (%d) below resolution. Substituting %d\0A\00", align 1
@tfrc_calc_x_lookup = common dso_local global i32** null, align 8
@TFRC_CALC_X_ARRSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tfrc_calc_x(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 1000000
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @DCCP_CRIT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TFRC_CALC_X_SPLIT, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TFRC_SMALLEST_P, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @TFRC_SMALLEST_P, align 4
  %34 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  store i64 0, i64* %8, align 8
  br label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TFRC_SMALLEST_P, align 4
  %38 = sdiv i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32**, i32*** @tfrc_calc_x_lookup, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  br label %61

48:                                               ; preds = %23
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TFRC_CALC_X_ARRSIZE, align 4
  %51 = sdiv i32 1000000, %50
  %52 = sdiv i32 %49, %51
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %8, align 8
  %55 = load i32**, i32*** @tfrc_calc_x_lookup, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %48, %41
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @scaled_div(i64 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @scaled_div32(i32 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %61, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DCCP_CRIT(i8*) #1

declare dso_local i32 @DCCP_WARN(i8*, i32, i32) #1

declare dso_local i32 @scaled_div(i64, i32) #1

declare dso_local i32 @scaled_div32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
