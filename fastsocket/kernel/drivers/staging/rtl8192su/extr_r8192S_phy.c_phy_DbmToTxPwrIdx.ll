; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_DbmToTxPwrIdx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_DbmToTxPwrIdx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@MAX_TXPWR_IDX_NMODE_92S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i32, i64)* @phy_DbmToTxPwrIdx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @phy_DbmToTxPwrIdx(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %12 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %11
  ]

10:                                               ; preds = %3
  store i64 -7, i64* %8, align 8
  br label %13

11:                                               ; preds = %3, %3
  store i64 -8, i64* %8, align 8
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %19, %20
  %22 = mul nsw i64 %21, 2
  store i64 %22, i64* %7, align 8
  br label %24

23:                                               ; preds = %13
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @MAX_TXPWR_IDX_NMODE_92S, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @MAX_TXPWR_IDX_NMODE_92S, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
