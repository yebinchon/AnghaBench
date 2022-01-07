; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_send_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_send_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.fb_info = type { %struct.TYPE_8__, %struct.hvfb_par* }
%struct.TYPE_8__ = type { i64 }
%struct.hvfb_par = type { i32, i64 }
%struct.synthvid_msg = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SYNTHVID_VRAM_LOCATION = common dso_local global i32 0, align 4
@VSP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Time out on waiting vram location ack\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to set VRAM location\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @synthvid_send_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthvid_send_config(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.hvfb_par*, align 8
  %5 = alloca %struct.synthvid_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %8 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %9 = call %struct.fb_info* @hv_get_drvdata(%struct.hv_device* %8)
  store %struct.fb_info* %9, %struct.fb_info** %3, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.hvfb_par*, %struct.hvfb_par** %11, align 8
  store %struct.hvfb_par* %12, %struct.hvfb_par** %4, align 8
  %13 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %14 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.synthvid_msg*
  store %struct.synthvid_msg* %16, %struct.synthvid_msg** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %18 = call i32 @memset(%struct.synthvid_msg* %17, i32 0, i32 40)
  %19 = load i32, i32* @SYNTHVID_VRAM_LOCATION, align 4
  %20 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %21 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %24 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 8, i32* %25, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %31 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  %33 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %34 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 %29, i64* %35, align 8
  %36 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %37 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %40 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %41 = call i32 @synthvid_send(%struct.hv_device* %39, %struct.synthvid_msg* %40)
  %42 = load %struct.hvfb_par*, %struct.hvfb_par** %4, align 8
  %43 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %42, i32 0, i32 0
  %44 = load i32, i32* @VSP_TIMEOUT, align 4
  %45 = call i32 @wait_for_completion_timeout(i32* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %1
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %71

52:                                               ; preds = %1
  %53 = load %struct.synthvid_msg*, %struct.synthvid_msg** %5, align 8
  %54 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %71

66:                                               ; preds = %52
  %67 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %68 = call i32 @synthvid_send_ptr(%struct.hv_device* %67)
  %69 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %70 = call i32 @synthvid_send_situ(%struct.hv_device* %69)
  br label %71

71:                                               ; preds = %66, %62, %48
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.fb_info* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.synthvid_msg*, i32, i32) #1

declare dso_local i32 @synthvid_send(%struct.hv_device*, %struct.synthvid_msg*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @synthvid_send_ptr(%struct.hv_device*) #1

declare dso_local i32 @synthvid_send_situ(%struct.hv_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
