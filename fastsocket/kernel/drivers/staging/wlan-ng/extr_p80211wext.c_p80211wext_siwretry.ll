; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_siwretry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_siwretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@wlan_wext_write = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DIDmsg_dot11req_mibset = common dso_local global i32 0, align 4
@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@DIDmib_dot11mac_dot11OperationTable_dot11MaxTransmitMSDULifetime = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@DIDmib_dot11mac_dot11OperationTable_dot11LongRetryLimit = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@DIDmib_dot11mac_dot11OperationTable_dot11ShortRetryLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @p80211wext_siwretry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211wext_siwretry(%struct.TYPE_10__* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @wlan_wext_write, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  br label %114

22:                                               ; preds = %4
  %23 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %13, align 4
  br label %114

30:                                               ; preds = %22
  %31 = load i32, i32* @DIDmsg_dot11req_mibset, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %34 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IW_RETRY_TYPE, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %30
  %41 = load i32, i32* @DIDmib_dot11mac_dot11OperationTable_dot11MaxTransmitMSDULifetime, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %44 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 1024
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @memcpy(i32* %49, %struct.TYPE_9__* %10, i32 8)
  %51 = load i32*, i32** %9, align 8
  %52 = bitcast %struct.TYPE_8__* %11 to i32*
  %53 = call i32 @p80211req_dorequest(i32* %51, i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %114

59:                                               ; preds = %40
  br label %113

60:                                               ; preds = %30
  %61 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %62 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IW_RETRY_LONG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %60
  %68 = load i32, i32* @DIDmib_dot11mac_dot11OperationTable_dot11LongRetryLimit, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @memcpy(i32* %75, %struct.TYPE_9__* %10, i32 8)
  %77 = load i32*, i32** %9, align 8
  %78 = bitcast %struct.TYPE_8__* %11 to i32*
  %79 = call i32 @p80211req_dorequest(i32* %77, i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  br label %114

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %60
  %87 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %88 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IW_RETRY_SHORT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %86
  %94 = load i32, i32* @DIDmib_dot11mac_dot11OperationTable_dot11ShortRetryLimit, align 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %97 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = call i32 @memcpy(i32* %101, %struct.TYPE_9__* %10, i32 8)
  %103 = load i32*, i32** %9, align 8
  %104 = bitcast %struct.TYPE_8__* %11 to i32*
  %105 = call i32 @p80211req_dorequest(i32* %103, i32* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %114

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %86
  br label %113

113:                                              ; preds = %112, %59
  br label %114

114:                                              ; preds = %113, %108, %82, %56, %27, %19
  %115 = load i32, i32* %13, align 4
  ret i32 %115
}

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @p80211req_dorequest(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
