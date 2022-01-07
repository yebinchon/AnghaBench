; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_roamed_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_roamed_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32, i32 }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, %struct.cfg80211_bss*, i32*, i32* }

@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@EVENT_ROAMED = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_roamed_bss(%struct.net_device* %0, %struct.cfg80211_bss* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.cfg80211_bss*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wireless_dev*, align 8
  %16 = alloca %struct.cfg80211_registered_device*, align 8
  %17 = alloca %struct.cfg80211_event*, align 8
  %18 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %15, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %24)
  store %struct.cfg80211_registered_device* %25, %struct.cfg80211_registered_device** %16, align 8
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @CFG80211_DEV_WARN_ON(i32 %31)
  %33 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %34 = icmp ne %struct.cfg80211_bss* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %7
  br label %119

40:                                               ; preds = %7
  %41 = load i64, i64* %11, align 8
  %42 = add i64 56, %41
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %14, align 4
  %47 = call %struct.cfg80211_event* @kzalloc(i32 %45, i32 %46)
  store %struct.cfg80211_event* %47, %struct.cfg80211_event** %17, align 8
  %48 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %49 = icmp ne %struct.cfg80211_event* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %55 = call i32 @cfg80211_put_bss(i32 %53, %struct.cfg80211_bss* %54)
  br label %119

56:                                               ; preds = %40
  %57 = load i32, i32* @EVENT_ROAMED, align 4
  %58 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %59 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %61 = bitcast %struct.cfg80211_event* %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 56
  %63 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %64 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i32* %62, i32** %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %68 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %71 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = load i32*, i32** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @memcpy(i8* %74, i32* %75, i64 %76)
  %78 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %79 = bitcast %struct.cfg80211_event* %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 56
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %84 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32* %82, i32** %85, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %88 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %91 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = load i32*, i32** %12, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @memcpy(i8* %94, i32* %95, i64 %96)
  %98 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %99 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %100 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store %struct.cfg80211_bss* %98, %struct.cfg80211_bss** %101, align 8
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %103 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %102, i32 0, i32 1
  %104 = load i64, i64* %18, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.cfg80211_event*, %struct.cfg80211_event** %17, align 8
  %107 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %106, i32 0, i32 0
  %108 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %109 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %108, i32 0, i32 2
  %110 = call i32 @list_add_tail(i32* %107, i32* %109)
  %111 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %112 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %111, i32 0, i32 1
  %113 = load i64, i64* %18, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load i32, i32* @cfg80211_wq, align 4
  %116 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  %117 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %116, i32 0, i32 0
  %118 = call i32 @queue_work(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %56, %50, %39
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @CFG80211_DEV_WARN_ON(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
