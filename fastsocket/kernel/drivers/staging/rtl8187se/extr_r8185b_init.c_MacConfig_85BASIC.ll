; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_MacConfig_85BASIC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_MacConfig_85BASIC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TID_AC_MAP = common dso_local global i32 0, align 4
@IntMig = common dso_local global i32 0, align 4
@PHYPR = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @MacConfig_85BASIC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MacConfig_85BASIC(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i32 @MacConfig_85BASIC_HardCode(%struct.net_device* %4)
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load i32, i32* @TID_AC_MAP, align 4
  %8 = call i32 @write_nic_word(%struct.net_device* %6, i32 %7, i32 64080)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @IntMig, align 4
  %11 = call i32 @write_nic_word(%struct.net_device* %9, i32 %10, i32 0)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @PlatformIOWrite4Byte(%struct.net_device* %12, i32 496, i32 0)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @PlatformIOWrite4Byte(%struct.net_device* %14, i32 500, i32 0)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @PlatformIOWrite1Byte(%struct.net_device* %16, i32 504, i32 0)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @PHYPR, align 4
  %20 = call i32 @read_nic_byte(%struct.net_device* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @PHYPR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @BIT2, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @write_nic_byte(%struct.net_device* %21, i32 %22, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @write_nic_word(%struct.net_device* %27, i32 864, i32 4096)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @write_nic_word(%struct.net_device* %29, i32 866, i32 4096)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @write_nic_word(%struct.net_device* %31, i32 880, i32 1376)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @write_nic_word(%struct.net_device* %33, i32 882, i32 1376)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @write_nic_word(%struct.net_device* %35, i32 884, i32 3492)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @write_nic_word(%struct.net_device* %37, i32 886, i32 3492)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @write_nic_word(%struct.net_device* %39, i32 888, i32 1376)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @write_nic_word(%struct.net_device* %41, i32 890, i32 1376)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @write_nic_word(%struct.net_device* %43, i32 892, i32 236)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @write_nic_word(%struct.net_device* %45, i32 894, i32 236)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @write_nic_byte(%struct.net_device* %47, i32 590, i32 1)
  ret void
}

declare dso_local i32 @MacConfig_85BASIC_HardCode(%struct.net_device*) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @PlatformIOWrite4Byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @PlatformIOWrite1Byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
