; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_93cx6.c_eprom_cs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_93cx6.c_eprom_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@EPROM_CMD = common dso_local global i32 0, align 4
@EPROM_CS_SHIFT = common dso_local global i32 0, align 4
@EPROM_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eprom_cs(%struct.net_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = icmp ne i16 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load i32, i32* @EPROM_CMD, align 4
  %10 = load i32, i32* @EPROM_CS_SHIFT, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32, i32* @EPROM_CMD, align 4
  %14 = call i32 @read_nic_byte(%struct.net_device* %12, i32 %13)
  %15 = or i32 %11, %14
  %16 = call i32 @write_nic_byte(%struct.net_device* %8, i32 %9, i32 %15)
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load i32, i32* @EPROM_CMD, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load i32, i32* @EPROM_CMD, align 4
  %22 = call i32 @read_nic_byte(%struct.net_device* %20, i32 %21)
  %23 = load i32, i32* @EPROM_CS_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = call i32 @write_nic_byte(%struct.net_device* %18, i32 %19, i32 %26)
  br label %28

28:                                               ; preds = %17, %7
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @force_pci_posting(%struct.net_device* %29)
  %31 = load i32, i32* @EPROM_DELAY, align 4
  %32 = call i32 @udelay(i32 %31)
  ret void
}

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
