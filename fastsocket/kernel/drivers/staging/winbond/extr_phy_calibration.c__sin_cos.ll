; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__sin_cos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__sin_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AG_CONST = common dso_local global i32 0, align 4
@Angles = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sin_cos(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i32, i32* @AG_CONST, align 4
  %14 = call i64 @FIXED(i32 %13)
  store i64 %14, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @abs(i64 %15)
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %68, %3
  %18 = load i32, i32* %11, align 4
  %19 = icmp ult i32 %18, 12
  br i1 %19, label %20, label %71

20:                                               ; preds = %17
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = ashr i64 %26, %28
  %30 = sub nsw i64 %25, %29
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = ashr i64 %31, %33
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %34, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %7, align 8
  %38 = load i64*, i64** @Angles, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %67

45:                                               ; preds = %20
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = ashr i64 %47, %49
  %51 = add nsw i64 %46, %50
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = ashr i64 %52, %54
  %56 = sub nsw i64 0, %55
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %56, %57
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %7, align 8
  %60 = load i64*, i64** @Angles, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %45, %24
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %17

71:                                               ; preds = %17
  %72 = load i64, i64* %4, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = load i64*, i64** %6, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64*, i64** %5, align 8
  store i64 %77, i64* %78, align 8
  br label %85

79:                                               ; preds = %71
  %80 = load i64, i64* %7, align 8
  %81 = load i64*, i64** %6, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub nsw i64 0, %82
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %74
  ret void
}

declare dso_local i64 @FIXED(i32) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
