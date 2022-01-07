; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_MgntDisconnectIBSS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_MgntDisconnectIBSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@IEEE80211_NOLINK = common dso_local global i32 0, align 4
@RT_OP_MODE_NO_LINK = common dso_local global i32 0, align 4
@BSSIDR = common dso_local global i64 0, align 8
@MSR = common dso_local global i32 0, align 4
@MSR_LINK_MANAGED = common dso_local global i32 0, align 4
@MSR_LINK_ADHOC = common dso_local global i32 0, align 4
@MSR_LINK_MASTER = common dso_local global i32 0, align 4
@MSR_LINK_NONE = common dso_local global i32 0, align 4
@RCR = common dso_local global i64 0, align 8
@RCR_CBSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @MgntDisconnectIBSS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MgntDisconnectIBSS(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @IEEE80211_NOLINK, align 4
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 %12, i32* %16, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 85, i32* %29, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* @RT_OP_MODE_NO_LINK, align 4
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load i64, i64* @BSSIDR, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @write_nic_word(%struct.net_device* %37, i64 %38, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load i64, i64* @BSSIDR, align 8
  %50 = add nsw i64 %49, 2
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @write_nic_dword(%struct.net_device* %48, i64 %50, i32 %59)
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = load i32, i32* @MSR, align 4
  %66 = call i32 @read_nic_byte(%struct.net_device* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 252
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %82 [
    i32 128, label %70
    i32 129, label %74
    i32 130, label %78
  ]

70:                                               ; preds = %33
  %71 = load i32, i32* @MSR_LINK_MANAGED, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %86

74:                                               ; preds = %33
  %75 = load i32, i32* @MSR_LINK_ADHOC, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %86

78:                                               ; preds = %33
  %79 = load i32, i32* @MSR_LINK_MASTER, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %86

82:                                               ; preds = %33
  %83 = load i32, i32* @MSR_LINK_NONE, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %78, %74, %70
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = load i32, i32* @MSR, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @write_nic_byte(%struct.net_device* %87, i32 %88, i32 %89)
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = call i32 @ieee80211_stop_send_beacons(%struct.TYPE_5__* %93)
  store i32 0, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %9, align 4
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i64, i64* @RCR, align 8
  %98 = call i32 @read_nic_dword(%struct.net_device* %96, i64 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %101 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %86
  %105 = load i32, i32* @RCR_CBSSID, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %117

108:                                              ; preds = %86
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* @RCR_CBSSID, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %111, %108
  br label %117

117:                                              ; preds = %116, %104
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = load i64, i64* @RCR, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @write_nic_dword(%struct.net_device* %118, i64 %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %124 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %126 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = call i32 @notify_wx_assoc_event(%struct.TYPE_5__* %127)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ieee80211_stop_send_beacons(%struct.TYPE_5__*) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i64) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
