; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_write_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_write_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@PHY_ADR = common dso_local global i32 0, align 4
@MAX_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Phy writing %x %x failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_phy(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 16711680, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, 128
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32, i32* @PHY_ADR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @write_nic_dword(%struct.net_device* %18, i32 %19, i32 %20)
  store i32 16776960, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i32, i32* @PHY_ADR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @write_nic_dword(%struct.net_device* %25, i32 %26, i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %53, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MAX_PHY, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i32, i32* @PHY_ADR, align 4
  %36 = call i32 @read_nic_dword(%struct.net_device* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 16711680
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 16
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @force_pci_posting(%struct.net_device* %45)
  %47 = call i32 @mdelay(i32 3)
  br label %60

48:                                               ; preds = %33
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @force_pci_posting(%struct.net_device* %49)
  %51 = call i32 @mdelay(i32 3)
  br label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %29

56:                                               ; preds = %29
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @DMESGW(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %44
  ret void
}

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DMESGW(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
