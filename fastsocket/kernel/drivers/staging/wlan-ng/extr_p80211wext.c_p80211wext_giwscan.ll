; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_giwscan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_giwscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@DIDmsg_dot11req_scan_results = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_success = common dso_local global i64 0, align 8
@IW_SCAN_MAX_DATA = common dso_local global i32 0, align 4
@IW_MAX_AP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @p80211wext_giwscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211wext_giwscan(%struct.TYPE_11__* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %15, align 8
  br label %20

20:                                               ; preds = %49, %4
  %21 = call i32 @memset(%struct.TYPE_10__* %10, i32 0, i32 16)
  %22 = load i32, i32* @DIDmsg_dot11req_scan_results, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = bitcast %struct.TYPE_10__* %10 to i32*
  %29 = call i32 @p80211req_dorequest(i32* %27, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @P80211ENUM_resultcode_success, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %20
  br label %53

39:                                               ; preds = %32
  %40 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = call i8* @wext_translate_bss(%struct.iw_request_info* %40, i8* %41, i8* %45, %struct.TYPE_10__* %10)
  store i8* %46, i8** %15, align 8
  store i32 1, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @IW_MAX_AP, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %20, label %53

53:                                               ; preds = %49, %38
  %54 = load i8*, i8** %15, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %61 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @prism2_result2err(i64 %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %69, %66, %53
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @p80211req_dorequest(i32*, i32*) #1

declare dso_local i8* @wext_translate_bss(%struct.iw_request_info*, i8*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @prism2_result2err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
