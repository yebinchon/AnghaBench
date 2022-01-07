; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_Initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SYS_FUNC_EN = common dso_local global i32 0, align 4
@SYS_ISO_CTRL = common dso_local global i32 0, align 4
@EFUSE_TEST = common dso_local global i32 0, align 4
@EFUSE_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EFUSE_Initialize(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = load i32, i32* @SYS_FUNC_EN, align 4
  %7 = add nsw i32 %6, 1
  %8 = call i32 @read_nic_byte(%struct.net_device* %5, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @SYS_FUNC_EN, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @write_nic_byte(%struct.net_device* %11, i32 %13, i32 %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @SYS_ISO_CTRL, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @read_nic_byte(%struct.net_device* %16, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 254
  store i32 %21, i32* %4, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @SYS_ISO_CTRL, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @write_nic_byte(%struct.net_device* %22, i32 %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @EFUSE_TEST, align 4
  %29 = add nsw i32 %28, 3
  %30 = call i32 @read_nic_byte(%struct.net_device* %27, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 128
  store i32 %32, i32* %4, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @EFUSE_TEST, align 4
  %35 = add nsw i32 %34, 3
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @write_nic_byte(%struct.net_device* %33, i32 %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @write_nic_byte(%struct.net_device* %38, i32 760, i32 3)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = load i32, i32* @EFUSE_CTRL, align 4
  %42 = add nsw i32 %41, 3
  %43 = call i32 @write_nic_byte(%struct.net_device* %40, i32 %42, i32 114)
  ret void
}

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
