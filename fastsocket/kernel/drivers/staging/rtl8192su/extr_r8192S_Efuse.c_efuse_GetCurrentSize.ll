; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_GetCurrentSize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_GetCurrentSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@EFUSE_MAX_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @efuse_GetCurrentSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efuse_GetCurrentSize(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @efuse_OneByteRead(%struct.net_device* %14, i64 %15, i32* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %21 = icmp slt i64 %19, %20
  br label %22

22:                                               ; preds = %18, %13, %10
  %23 = phi i1 [ false, %13 ], [ false, %10 ], [ %21, %18 ]
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 255
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 15
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 15
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @efuse_CalculateWordCnts(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %43

41:                                               ; preds = %24
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %27
  br label %10

44:                                               ; preds = %22
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @efuse_OneByteRead(%struct.net_device*, i64, i32*) #1

declare dso_local i32 @efuse_CalculateWordCnts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
