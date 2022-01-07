; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_PHY_RFShadowCompareFlagSetAll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_PHY_RFShadowCompareFlagSetAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RF6052_MAX_PATH = common dso_local global i64 0, align 8
@RF6052_MAX_REG = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_RFShadowCompareFlagSetAll(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @RF6052_MAX_PATH, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @RF6052_MAX_REG, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 38
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 39
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @PHY_RFShadowCompareFlagSet(%struct.net_device* %21, i32 %23, i64 %24, i32 %25)
  br label %34

27:                                               ; preds = %17, %14
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @PHY_RFShadowCompareFlagSet(%struct.net_device* %28, i32 %30, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %10

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %3, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i32 @PHY_RFShadowCompareFlagSet(%struct.net_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
