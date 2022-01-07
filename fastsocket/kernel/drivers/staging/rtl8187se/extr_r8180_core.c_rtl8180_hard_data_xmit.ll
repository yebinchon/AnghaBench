; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_hard_data_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_hard_data_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ieee80211_hdr_3addr = type { i16 }

@IEEE80211_FCTL_MOREFRAGS = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [53 x i8] c"Error: no descriptor left by previous TX (avail %d) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_hard_data_xmit(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8180_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i64 @ieee80211_priv(%struct.net_device* %13)
  %15 = inttoptr i64 %14 to %struct.r8180_priv*
  store %struct.r8180_priv* %15, %struct.r8180_priv** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %19, %struct.ieee80211_hdr_3addr** %9, align 8
  %20 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @IEEE80211_FCTL_MOREFRAGS, align 2
  %25 = sext i16 %24 to i32
  %26 = and i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %10, align 2
  %28 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %29 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ieeerate2rtlrate(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @AC2Q(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %40 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %44 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %3
  %50 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %51 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %94

54:                                               ; preds = %3
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @check_nic_enought_desc(%struct.net_device* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @get_curr_tx_free_desc(%struct.net_device* %60, i32 %61)
  %63 = call i32 @DMESGW(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %65 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = call i32 @ieee80211_stop_queue(%struct.TYPE_2__* %66)
  br label %68

68:                                               ; preds = %59, %54
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i16, i16* %10, align 2
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @rtl8180_tx(%struct.net_device* %69, i64 %72, i32 %75, i32 %76, i16 signext %77, i32 0, i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @check_nic_enought_desc(%struct.net_device* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %68
  %85 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %86 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = call i32 @ieee80211_stop_queue(%struct.TYPE_2__* %87)
  br label %89

89:                                               ; preds = %84, %68
  %90 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %91 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %90, i32 0, i32 0
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %89, %49
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @ieeerate2rtlrate(i32) #1

declare dso_local i32 @AC2Q(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @check_nic_enought_desc(%struct.net_device*, i32) #1

declare dso_local i32 @DMESGW(i8*, i32) #1

declare dso_local i32 @get_curr_tx_free_desc(%struct.net_device*, i32) #1

declare dso_local i32 @ieee80211_stop_queue(%struct.TYPE_2__*) #1

declare dso_local i32 @rtl8180_tx(%struct.net_device*, i64, i32, i32, i16 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
