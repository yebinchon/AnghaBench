; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_phy_FwRFSerialWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_phy_FwRFSerialWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@QPNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @phy_FwRFSerialWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_FwRFSerialWrite(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 255
  %12 = shl i32 %11, 12
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 3
  %17 = shl i32 %16, 20
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, 4194304
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, -2147483648
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %37, %4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load i32, i32* @QPNR, align 4
  %27 = call i32 @read_nic_dword(%struct.net_device* %25, i32 %26)
  %28 = and i32 %27, -2147483648
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %9, align 8
  %33 = icmp slt i64 %31, 100
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @udelay(i32 10)
  br label %37

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %34
  br label %24

38:                                               ; preds = %36, %24
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = load i32, i32* @QPNR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @write_nic_dword(%struct.net_device* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
