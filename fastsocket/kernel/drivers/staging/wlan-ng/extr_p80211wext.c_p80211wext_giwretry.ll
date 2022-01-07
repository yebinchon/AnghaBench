; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_giwretry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_giwretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }

@DIDmsg_dot11req_mibget = common dso_local global i32 0, align 4
@DIDmib_dot11mac_dot11OperationTable_dot11ShortRetryLimit = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@DIDmib_dot11mac_dot11OperationTable_dot11LongRetryLimit = common dso_local global i32 0, align 4
@DIDmib_dot11mac_dot11OperationTable_dot11MaxTransmitMSDULifetime = common dso_local global i32 0, align 4
@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @p80211wext_giwretry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211wext_giwretry(%struct.TYPE_11__* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* @DIDmsg_dot11req_mibget, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @DIDmib_dot11mac_dot11OperationTable_dot11ShortRetryLimit, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(%struct.TYPE_10__* %25, %struct.TYPE_10__* %10, i32 8)
  %27 = load i32*, i32** %9, align 8
  %28 = bitcast %struct.TYPE_9__* %11 to i32*
  %29 = call i32 @p80211req_dorequest(i32* %27, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %131

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @memcpy(%struct.TYPE_10__* %10, %struct.TYPE_10__* %37, i32 8)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @DIDmib_dot11mac_dot11OperationTable_dot11LongRetryLimit, align 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @memcpy(%struct.TYPE_10__* %44, %struct.TYPE_10__* %10, i32 8)
  %46 = load i32*, i32** %9, align 8
  %47 = bitcast %struct.TYPE_9__* %11 to i32*
  %48 = call i32 @p80211req_dorequest(i32* %46, i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %131

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @memcpy(%struct.TYPE_10__* %10, %struct.TYPE_10__* %56, i32 8)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @DIDmib_dot11mac_dot11OperationTable_dot11MaxTransmitMSDULifetime, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @memcpy(%struct.TYPE_10__* %63, %struct.TYPE_10__* %10, i32 8)
  %65 = load i32*, i32** %9, align 8
  %66 = bitcast %struct.TYPE_9__* %11 to i32*
  %67 = call i32 @p80211req_dorequest(i32* %65, i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %13, align 4
  br label %131

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @memcpy(%struct.TYPE_10__* %10, %struct.TYPE_10__* %75, i32 8)
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %16, align 4
  %79 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %80 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %82 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IW_RETRY_TYPE, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %73
  %89 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %90 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %91 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %92, 1024
  %94 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %95 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %130

96:                                               ; preds = %73
  %97 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %98 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IW_RETRY_LONG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %105 = load i32, i32* @IW_RETRY_LONG, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %108 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %111 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %129

112:                                              ; preds = %96
  %113 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %114 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %115 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %118 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load i32, i32* @IW_RETRY_SHORT, align 4
  %124 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %125 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %112
  br label %129

129:                                              ; preds = %128, %103
  br label %130

130:                                              ; preds = %129, %88
  br label %131

131:                                              ; preds = %130, %70, %51, %32
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @p80211req_dorequest(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
