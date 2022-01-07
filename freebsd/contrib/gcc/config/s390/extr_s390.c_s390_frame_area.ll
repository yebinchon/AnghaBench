; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_frame_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_frame_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@cfun_frame_layout = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@cfun_save_high_fprs_p = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @s390_frame_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_frame_area(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @INT_MAX, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @INT_MIN, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 8
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 8
  %15 = load i32, i32* @UNITS_PER_WORD, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 8
  %21 = sub nsw i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @UNITS_PER_WORD, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %18, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i64, i64* @TARGET_64BIT, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i64, i64* @cfun_save_high_fprs_p, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 5), align 8
  %35 = call i32 @MIN(i32 %33, i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 5), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %39 = mul nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @MAX(i32 %36, i64 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %32, %29, %26
  %44 = load i64, i64* @TARGET_64BIT, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %43
  store i32 2, i32* %7, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @cfun_fpr_bit_p(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 4), align 8
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 2
  %59 = mul nsw i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = call i32 @MIN(i32 %55, i64 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 4), align 8
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 1
  %67 = mul nsw i32 %66, 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = call i32 @MAX(i32 %63, i64 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %54, %50
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %47

75:                                               ; preds = %47
  br label %76

76:                                               ; preds = %75, %43
  %77 = load i32, i32* %5, align 4
  %78 = load i32*, i32** %3, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32*, i32** %4, align 8
  store i32 %79, i32* %80, align 4
  ret void
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i64 @cfun_fpr_bit_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
