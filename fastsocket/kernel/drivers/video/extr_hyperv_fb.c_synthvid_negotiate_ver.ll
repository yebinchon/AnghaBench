; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_negotiate_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_negotiate_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.fb_info = type { %struct.hvfb_par* }
%struct.hvfb_par = type { i8*, i32, i64 }
%struct.synthvid_msg = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32 }

@SYNTHVID_VERSION_REQUEST = common dso_local global i32 0, align 4
@VSP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Time out on waiting version response\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, i8*)* @synthvid_negotiate_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthvid_negotiate_ver(%struct.hv_device* %0, i8* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.hvfb_par*, align 8
  %7 = alloca %struct.synthvid_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %11 = call %struct.fb_info* @hv_get_drvdata(%struct.hv_device* %10)
  store %struct.fb_info* %11, %struct.fb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.hvfb_par*, %struct.hvfb_par** %13, align 8
  store %struct.hvfb_par* %14, %struct.hvfb_par** %6, align 8
  %15 = load %struct.hvfb_par*, %struct.hvfb_par** %6, align 8
  %16 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.synthvid_msg*
  store %struct.synthvid_msg* %18, %struct.synthvid_msg** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.synthvid_msg*, %struct.synthvid_msg** %7, align 8
  %20 = call i32 @memset(%struct.synthvid_msg* %19, i32 0, i32 24)
  %21 = load i32, i32* @SYNTHVID_VERSION_REQUEST, align 4
  %22 = load %struct.synthvid_msg*, %struct.synthvid_msg** %7, align 8
  %23 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.synthvid_msg*, %struct.synthvid_msg** %7, align 8
  %26 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 8, i32* %27, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.synthvid_msg*, %struct.synthvid_msg** %7, align 8
  %30 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %33 = load %struct.synthvid_msg*, %struct.synthvid_msg** %7, align 8
  %34 = call i32 @synthvid_send(%struct.hv_device* %32, %struct.synthvid_msg* %33)
  %35 = load %struct.hvfb_par*, %struct.hvfb_par** %6, align 8
  %36 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %35, i32 0, i32 1
  %37 = load i32, i32* @VSP_TIMEOUT, align 4
  %38 = call i32 @wait_for_completion_timeout(i32* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %2
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %58

45:                                               ; preds = %2
  %46 = load %struct.synthvid_msg*, %struct.synthvid_msg** %7, align 8
  %47 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.hvfb_par*, %struct.hvfb_par** %6, align 8
  %57 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %51, %41
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local %struct.fb_info* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.synthvid_msg*, i32, i32) #1

declare dso_local i32 @synthvid_send(%struct.hv_device*, %struct.synthvid_msg*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
