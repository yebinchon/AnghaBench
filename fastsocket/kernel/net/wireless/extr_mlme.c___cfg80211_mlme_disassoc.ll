; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_mlme_disassoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_mlme_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_disassoc_request = type { i32, i32, %struct.TYPE_3__*, i32*, i32 }

@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sme_state=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i32*, i32, i32, i32)* @__cfg80211_mlme_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cfg80211_mlme_disassoc(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wireless_dev*, align 8
  %17 = alloca %struct.cfg80211_disassoc_request, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %19, align 8
  store %struct.wireless_dev* %20, %struct.wireless_dev** %16, align 8
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %22 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOTCONN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %78

31:                                               ; preds = %7
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @WARN(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOTCONN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %78

46:                                               ; preds = %31
  %47 = call i32 @memset(%struct.cfg80211_disassoc_request* %17, i32 0, i32 32)
  %48 = load i32, i32* %14, align 4
  %49 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 3
  store i32* %52, i32** %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i64 @ether_addr_equal(i32 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %46
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 2
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %70, align 8
  br label %74

71:                                               ; preds = %46
  %72 = load i32, i32* @ENOTCONN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = call i32 @rdev_disassoc(%struct.cfg80211_registered_device* %75, %struct.net_device* %76, %struct.cfg80211_disassoc_request* %17)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %71, %43, %28
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.cfg80211_disassoc_request*, i32, i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @rdev_disassoc(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_disassoc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
