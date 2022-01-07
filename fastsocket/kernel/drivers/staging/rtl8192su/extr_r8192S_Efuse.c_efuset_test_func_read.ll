; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuset_test_func_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuset_test_func_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@EFUSE_CHIP_ID = common dso_local global i32 0, align 4
@EFUSE_CCCR = common dso_local global i32 0, align 4
@EFUSE_MAC_ADDR = common dso_local global i32 0, align 4
@EFUSE_TXPW_TAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efuset_test_func_read(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca [28 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %8 = call i32 @memset(i32* %7, i32 0, i32 8)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @EFUSE_CHIP_ID, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %12 = call i32 @efuse_read_data(%struct.net_device* %9, i32 %10, i32* %11, i32 8)
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 12)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @EFUSE_CCCR, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %18 = call i32 @efuse_read_data(%struct.net_device* %15, i32 %16, i32* %17, i32 12)
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 0, i32 24)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @EFUSE_MAC_ADDR, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %24 = call i32 @efuse_read_data(%struct.net_device* %21, i32 %22, i32* %23, i32 24)
  %25 = getelementptr inbounds [28 x i32], [28 x i32]* %6, i64 0, i64 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 112)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @EFUSE_TXPW_TAB, align 4
  %29 = getelementptr inbounds [28 x i32], [28 x i32]* %6, i64 0, i64 0
  %30 = call i32 @efuse_read_data(%struct.net_device* %27, i32 %28, i32* %29, i32 112)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @efuse_read_data(%struct.net_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
