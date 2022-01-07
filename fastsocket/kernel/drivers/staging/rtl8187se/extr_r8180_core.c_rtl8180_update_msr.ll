; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_update_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_update_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@MSR = common dso_local global i32 0, align 4
@MSR_LINK_MASK = common dso_local global i32 0, align 4
@RX_CONF = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@MSR_LINK_ADHOC = common dso_local global i32 0, align 4
@MSR_LINK_SHIFT = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@MSR_LINK_MASTER = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@MSR_LINK_MANAGED = common dso_local global i32 0, align 4
@MSR_LINK_NONE = common dso_local global i32 0, align 4
@RX_CHECK_BSSID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_update_msr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8180_priv* %7, %struct.r8180_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @MSR, align 4
  %10 = call i32 @read_nic_byte(%struct.net_device* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @MSR_LINK_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @RX_CONF, align 4
  %17 = call i32 @read_nic_dword(%struct.net_device* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_LINKED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %1
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IW_MODE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* @MSR_LINK_ADHOC, align 4
  %35 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %25
  %40 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IW_MODE_MASTER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @MSR_LINK_MASTER, align 4
  %49 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %74

53:                                               ; preds = %39
  %54 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IW_MODE_INFRA, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* @MSR_LINK_MANAGED, align 4
  %63 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %53
  %68 = load i32, i32* @MSR_LINK_NONE, align 4
  %69 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74, %33
  %76 = load i32, i32* @RX_CHECK_BSSID_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %91

80:                                               ; preds = %1
  %81 = load i32, i32* @MSR_LINK_NONE, align 4
  %82 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @RX_CHECK_BSSID_SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %80, %75
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load i32, i32* @MSR, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @write_nic_byte(%struct.net_device* %92, i32 %93, i32 %94)
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i32, i32* @RX_CONF, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @write_nic_dword(%struct.net_device* %96, i32 %97, i32 %98)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
