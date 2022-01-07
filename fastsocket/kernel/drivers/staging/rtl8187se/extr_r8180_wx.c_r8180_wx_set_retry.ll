; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.r8180_priv = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@R8180_MAX_RETRY = common dso_local global i64 0, align 8
@IW_RETRY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting retry for RTS/CTS data to %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Setting retry for non RTS/CTS data to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8180_wx_set_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8180_wx_set_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8180_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8180_priv* %13, %struct.r8180_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %102

21:                                               ; preds = %4
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 2
  %24 = call i32 @down(i32* %23)
  %25 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %26 = bitcast %union.iwreq_data* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %34 = bitcast %union.iwreq_data* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %21
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %97

41:                                               ; preds = %32
  %42 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %43 = bitcast %union.iwreq_data* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %97

52:                                               ; preds = %41
  %53 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %54 = bitcast %union.iwreq_data* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @R8180_MAX_RETRY, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %97

62:                                               ; preds = %52
  %63 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %64 = bitcast %union.iwreq_data* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IW_RETRY_MAX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %72 = bitcast %union.iwreq_data* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %76 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %78 = bitcast %union.iwreq_data* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @DMESG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %80)
  br label %94

82:                                               ; preds = %62
  %83 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %84 = bitcast %union.iwreq_data* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %88 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %90 = bitcast %union.iwreq_data* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @DMESG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %82, %70
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = call i32 @rtl8180_commit(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %59, %49, %38
  %98 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %99 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %98, i32 0, i32 2
  %100 = call i32 @up(i32* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %20
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @DMESG(i8*, i64) #1

declare dso_local i32 @rtl8180_commit(%struct.net_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
