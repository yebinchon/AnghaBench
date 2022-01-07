; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32* }

@IEEE80211_NOLINK = common dso_local global i32 0, align 4
@IEEE80211_DEFAULT_BASIC_RATE = common dso_local global i32 0, align 4
@IEEE80211_PS_MBCAST = common dso_local global i32 0, align 4
@IEEE80211_PS_UNICAST = common dso_local global i32 0, align 4
@ieee80211_associate_abort_cb = common dso_local global i32 0, align 4
@ieee80211_send_beacon_cb = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@ieee80211_start_ibss_wq = common dso_local global i64 0, align 8
@ieee80211_associate_complete_wq = common dso_local global i64 0, align 8
@ieee80211_associate_procedure_wq = common dso_local global i64 0, align 8
@ieee80211_softmac_scan_wq = common dso_local global i64 0, align 8
@ieee80211_associate_retry_wq = common dso_local global i64 0, align 8
@ieee80211_wx_sync_scan_wq = common dso_local global i64 0, align 8
@ieee80211_sta_ps = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_init(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %4 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %4, i32 0, i32 39
  %6 = call i32 @memset(i32* %5, i32 0, i32 4)
  %7 = load i32, i32* @IEEE80211_NOLINK, align 4
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 38
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 37
  store i64 0, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 36
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 35
  store i64 0, i64* %27, align 8
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 34
  store i64 0, i64* %29, align 8
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 33
  store i64 0, i64* %31, align 8
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %32, i32 0, i32 32
  store i64 0, i64* %33, align 8
  %34 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %34, i32 0, i32 31
  store i64 0, i64* %35, align 8
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 30
  store i64 0, i64* %37, align 8
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 29
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @IEEE80211_DEFAULT_BASIC_RATE, align 4
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 28
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 0
  store i32 3, i32* %44, align 8
  %45 = load i32, i32* @IEEE80211_PS_MBCAST, align 4
  %46 = load i32, i32* @IEEE80211_PS_UNICAST, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 27
  store i64 0, i64* %51, align 8
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 4
  store i32 2, i32* %57, align 8
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 26
  store i64 0, i64* %59, align 8
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 25
  store i64 0, i64* %61, align 8
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 24
  store i64 0, i64* %63, align 8
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 23
  store i64 0, i64* %65, align 8
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 5
  store i32 0, i32* %67, align 4
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %68, i32 0, i32 6
  store i32 0, i32* %69, align 8
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %71 = call i32 @init_mgmt_queue(%struct.ieee80211_device* %70)
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 22
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 21
  %77 = call i32 @init_timer(%struct.TYPE_4__* %76)
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %79 = ptrtoint %struct.ieee80211_device* %78 to i64
  %80 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %81 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %80, i32 0, i32 21
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load i32, i32* @ieee80211_associate_abort_cb, align 4
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 21
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 20
  %89 = call i32 @init_timer(%struct.TYPE_4__* %88)
  %90 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %91 = ptrtoint %struct.ieee80211_device* %90 to i64
  %92 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %93 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %92, i32 0, i32 20
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  %95 = load i32, i32* @ieee80211_send_beacon_cb, align 4
  %96 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %97 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %96, i32 0, i32 20
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @DRV_NAME, align 4
  %100 = call i8* (i32, ...) @create_workqueue(i32 %99)
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 19
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %104 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %103, i32 0, i32 18
  %105 = load i64, i64* @ieee80211_start_ibss_wq, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @INIT_DELAYED_WORK(i32* %104, i8* %106)
  %108 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %109 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %108, i32 0, i32 17
  %110 = load i64, i64* @ieee80211_associate_complete_wq, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 @INIT_WORK(i32* %109, i8* %111)
  %113 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %114 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %113, i32 0, i32 16
  %115 = load i64, i64* @ieee80211_associate_procedure_wq, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @INIT_WORK(i32* %114, i8* %116)
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %119 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %118, i32 0, i32 15
  %120 = load i64, i64* @ieee80211_softmac_scan_wq, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @INIT_DELAYED_WORK(i32* %119, i8* %121)
  %123 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %124 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %123, i32 0, i32 14
  %125 = load i64, i64* @ieee80211_associate_retry_wq, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @INIT_DELAYED_WORK(i32* %124, i8* %126)
  %128 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %129 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %128, i32 0, i32 13
  %130 = load i64, i64* @ieee80211_wx_sync_scan_wq, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @INIT_WORK(i32* %129, i8* %131)
  %133 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %134 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %133, i32 0, i32 12
  %135 = call i32 @sema_init(i32* %134, i32 1)
  %136 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %137 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %136, i32 0, i32 11
  %138 = call i32 @sema_init(i32* %137, i32 1)
  %139 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %140 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %139, i32 0, i32 10
  %141 = call i32 @spin_lock_init(i32* %140)
  %142 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %143 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %142, i32 0, i32 9
  %144 = call i32 @spin_lock_init(i32* %143)
  %145 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %146 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %145, i32 0, i32 8
  %147 = load i64, i64* @ieee80211_sta_ps, align 8
  %148 = inttoptr i64 %147 to void (i64)*
  %149 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %150 = ptrtoint %struct.ieee80211_device* %149 to i64
  %151 = call i32 @tasklet_init(i32* %146, void (i64)* %148, i64 %150)
  %152 = load i32, i32* @GFP_ATOMIC, align 4
  %153 = call i32 @kmalloc(i32 4, i32 %152)
  %154 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %155 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @init_mgmt_queue(%struct.ieee80211_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i8* @create_workqueue(i32, ...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i8*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
