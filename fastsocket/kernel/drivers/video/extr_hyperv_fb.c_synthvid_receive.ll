; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.fb_info = type { %struct.hvfb_par* }
%struct.hvfb_par = type { i64 }
%struct.synthvid_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MAX_VMBUS_PKT_SIZE = common dso_local global i32 0, align 4
@PIPE_MSG_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @synthvid_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synthvid_receive(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.hvfb_par*, align 8
  %6 = alloca %struct.synthvid_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.hv_device*
  store %struct.hv_device* %11, %struct.hv_device** %3, align 8
  %12 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %13 = call %struct.fb_info* @hv_get_drvdata(%struct.hv_device* %12)
  store %struct.fb_info* %13, %struct.fb_info** %4, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = icmp ne %struct.fb_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = load %struct.hvfb_par*, %struct.hvfb_par** %19, align 8
  store %struct.hvfb_par* %20, %struct.hvfb_par** %5, align 8
  %21 = load %struct.hvfb_par*, %struct.hvfb_par** %5, align 8
  %22 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.synthvid_msg*
  store %struct.synthvid_msg* %24, %struct.synthvid_msg** %6, align 8
  br label %25

25:                                               ; preds = %51, %17
  %26 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %27 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.synthvid_msg*, %struct.synthvid_msg** %6, align 8
  %30 = load i32, i32* @MAX_VMBUS_PKT_SIZE, align 4
  %31 = call i32 @vmbus_recvpacket(i32 %28, %struct.synthvid_msg* %29, i32 %30, i64* %7, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load %struct.synthvid_msg*, %struct.synthvid_msg** %6, align 8
  %36 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PIPE_MSG_DATA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %43 = call i32 @synthvid_recv_sub(%struct.hv_device* %42)
  br label %44

44:                                               ; preds = %41, %34, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %25, label %53

53:                                               ; preds = %16, %51
  ret void
}

declare dso_local %struct.fb_info* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @vmbus_recvpacket(i32, %struct.synthvid_msg*, i32, i64*, i32*) #1

declare dso_local i32 @synthvid_recv_sub(%struct.hv_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
