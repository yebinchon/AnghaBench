; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.iw_request_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i32 0, align 4
@IW_MODE_REPEAT = common dso_local global i32 0, align 4
@IW_MODE_SECOND = common dso_local global i32 0, align 4
@IW_MODE_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_giwmode(%struct.net_device* %0, %struct.iw_request_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %10, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %15 = icmp ne %struct.wireless_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %45

19:                                               ; preds = %4
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %41 [
    i32 132, label %23
    i32 129, label %26
    i32 133, label %29
    i32 130, label %32
    i32 128, label %35
    i32 131, label %38
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @IW_MODE_MASTER, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %44

26:                                               ; preds = %19
  %27 = load i32, i32* @IW_MODE_INFRA, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  br label %44

29:                                               ; preds = %19
  %30 = load i32, i32* @IW_MODE_ADHOC, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %44

32:                                               ; preds = %19
  %33 = load i32, i32* @IW_MODE_MONITOR, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %44

35:                                               ; preds = %19
  %36 = load i32, i32* @IW_MODE_REPEAT, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %44

38:                                               ; preds = %19
  %39 = load i32, i32* @IW_MODE_SECOND, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %19
  %42 = load i32, i32* @IW_MODE_AUTO, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
