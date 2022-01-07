; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_get_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_get_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64* }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.iw_encode_ext = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"get_encode_ext flags[%d] alg[%d] keylen[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"get_encodeext max_len [%d] invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"get_encode_ext index [%d]\0A\00", align 1
@NUM_WEPKEYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"get_encode_ext invalid key index [%d]\0A\00", align 1
@IW_ENCODE_ALG_WEP = common dso_local global i64 0, align 8
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @p80211wext_get_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211wext_get_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.iw_encode_ext*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %19, %struct.iw_encode_ext** %10, align 8
  %20 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %21 = bitcast %union.iwreq_data* %20 to %struct.iw_point*
  store %struct.iw_point* %21, %struct.iw_point** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %23 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %26 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %30 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28, i32 %32)
  %34 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 32
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %111

47:                                               ; preds = %4
  %48 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %49 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %47
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @NUM_WEPKEYS, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %14, align 4
  %66 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %111

69:                                               ; preds = %60
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %14, align 4
  br label %73

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %77 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %79 = call i32 @memset(%struct.iw_encode_ext* %78, i32 0, i32 32)
  %80 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %81 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %82 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %91 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %93 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %10, align 8
  %103 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @memcpy(i32 %94, i32 %101, i64 %104)
  %106 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %107 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %108 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %73, %64, %42
  %112 = load i32, i32* %12, align 4
  ret i32 %112
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
