; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_data_hard_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_data_hard_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32 }

@EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@TPPOLLSTOP_AC_VIQ = common dso_local global i32 0, align 4
@TPPollStop = common dso_local global i32 0, align 4
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_data_hard_resume(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @ieee80211_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.r8180_priv*
  store %struct.r8180_priv* %6, %struct.r8180_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @EPROM_CMD_CONFIG, align 4
  %9 = call i32 @rtl8180_set_mode(%struct.net_device* %7, i32 %8)
  %10 = load i32, i32* @TPPOLLSTOP_AC_VIQ, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @TPPollStop, align 4
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @write_nic_byte(%struct.net_device* %16, i32 %17, i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %24 = call i32 @rtl8180_set_mode(%struct.net_device* %22, i32 %23)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8180_set_mode(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
