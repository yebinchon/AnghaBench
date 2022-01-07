; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_beacon_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_beacon_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32* }

@MSR = common dso_local global i32 0, align 4
@MSR_LINK_MASK = common dso_local global i32 0, align 4
@NIC_8192U = common dso_local global i64 0, align 8
@MAX_RX_URB = common dso_local global i64 0, align 8
@MSR_LINK_ADHOC = common dso_local global i32 0, align 4
@MSR_LINK_SHIFT = common dso_local global i32 0, align 4
@MSR_LINK_MASTER = common dso_local global i32 0, align 4
@MSR_LINK_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_beacon_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @MSR, align 4
  %11 = call i32 @read_nic_byte(%struct.net_device* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MSR_LINK_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MSR_LINK_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* @NIC_8192U, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @MAX_RX_URB, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_kill_urb(i32 %30)
  br label %32

32:                                               ; preds = %24, %1
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MSR_LINK_ADHOC, align 4
  %35 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MSR_LINK_MASTER, align 4
  %41 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38, %32
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* @MSR, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MSR_LINK_NONE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @write_nic_byte(%struct.net_device* %45, i32 %46, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = load i32, i32* @MSR, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @write_nic_byte(%struct.net_device* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %44, %38
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
