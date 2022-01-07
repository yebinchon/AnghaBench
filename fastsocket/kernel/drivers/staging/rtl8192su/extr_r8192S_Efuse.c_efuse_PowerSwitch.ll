; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_PowerSwitch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_PowerSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@EFUSE_TEST = common dso_local global i64 0, align 8
@EFUSE_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @efuse_PowerSwitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_PowerSwitch(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @TRUE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load i64, i64* @EFUSE_TEST, align 8
  %12 = add nsw i64 %11, 3
  %13 = call i64 @read_nic_byte(%struct.net_device* %10, i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load i64, i64* @EFUSE_TEST, align 8
  %16 = add nsw i64 %15, 3
  %17 = load i64, i64* %5, align 8
  %18 = or i64 %17, 128
  %19 = trunc i64 %18 to i32
  %20 = call i32 @write_nic_byte(%struct.net_device* %14, i64 %16, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i64, i64* @EFUSE_CLK, align 8
  %23 = call i32 @write_nic_byte(%struct.net_device* %21, i64 %22, i32 3)
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i64, i64* @EFUSE_TEST, align 8
  %27 = add nsw i64 %26, 3
  %28 = call i64 @read_nic_byte(%struct.net_device* %25, i64 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load i64, i64* @EFUSE_TEST, align 8
  %31 = add nsw i64 %30, 3
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 127
  %34 = trunc i64 %33 to i32
  %35 = call i32 @write_nic_byte(%struct.net_device* %29, i64 %31, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i64, i64* @EFUSE_CLK, align 8
  %38 = call i32 @write_nic_byte(%struct.net_device* %36, i64 %37, i32 2)
  br label %39

39:                                               ; preds = %24, %9
  ret void
}

declare dso_local i64 @read_nic_byte(%struct.net_device*, i64) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
