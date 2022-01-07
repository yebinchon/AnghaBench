; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_recv_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_recv_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.fb_info = type { %struct.hvfb_par* }
%struct.hvfb_par = type { i32, i64, i64, i32, i32, i64 }
%struct.synthvid_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@SYNTHVID_VERSION_RESPONSE = common dso_local global i64 0, align 8
@SYNTHVID_VRAM_LOCATION_ACK = common dso_local global i64 0, align 8
@MAX_VMBUS_PKT_SIZE = common dso_local global i32 0, align 4
@SYNTHVID_FEATURE_CHANGE = common dso_local global i64 0, align 8
@HVFB_UPDATE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*)* @synthvid_recv_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synthvid_recv_sub(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.hvfb_par*, align 8
  %5 = alloca %struct.synthvid_msg*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %6 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %7 = call %struct.fb_info* @hv_get_drvdata(%struct.hv_device* %6)
  store %struct.fb_info* %7, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = icmp ne %struct.fb_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %76

11:                                               ; preds = %1
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.hvfb_par*, %struct.hvfb_par** %13, align 8
  store %struct.hvfb_par* %14, %struct.hvfb_par** %4, align 8
  %15 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %16 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.synthvid_msg*
  store %struct.synthvid_msg* %18, %struct.synthvid_msg** %5, align 8
  %19 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %20 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SYNTHVID_VERSION_RESPONSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %11
  %26 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %27 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SYNTHVID_VRAM_LOCATION_ACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %25, %11
  %33 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %34 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %37 = load i32, i32* @MAX_VMBUS_PKT_SIZE, align 4
  %38 = call i32 @memcpy(i32 %35, %struct.synthvid_msg* %36, i32 %37)
  %39 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %40 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %39, i32 0, i32 3
  %41 = call i32 @complete(i32* %40)
  br label %76

42:                                               ; preds = %25
  %43 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %44 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SYNTHVID_FEATURE_CHANGE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %42
  %50 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %51 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %56 = call i32 @synthvid_send_ptr(%struct.hv_device* %55)
  %57 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %58 = call i32 @synthvid_send_situ(%struct.hv_device* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %61 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %65 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %67 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %72 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %71, i32 0, i32 0
  %73 = load i32, i32* @HVFB_UPDATE_DELAY, align 4
  %74 = call i32 @schedule_delayed_work(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %59
  br label %76

76:                                               ; preds = %10, %32, %75, %42
  ret void
}

declare dso_local %struct.fb_info* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @memcpy(i32, %struct.synthvid_msg*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @synthvid_send_ptr(%struct.hv_device*) #1

declare dso_local i32 @synthvid_send_situ(%struct.hv_device*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
