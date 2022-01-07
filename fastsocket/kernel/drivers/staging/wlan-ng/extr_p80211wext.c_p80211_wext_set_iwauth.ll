; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211_wext_set_iwauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211_wext_set_iwauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"set_iwauth flags[%d]\0A\00", align 1
@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"drop_unencrypted %d\0A\00", align 1
@DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted = common dso_local global i32 0, align 4
@P80211ENUM_truth_true = common dso_local global i32 0, align 4
@P80211ENUM_truth_false = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"privacy invoked %d\0A\00", align 1
@DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"set open_system\0A\00", align 1
@HOSTWEP_SHAREDKEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"set shared key\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown AUTH_ALG (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @p80211_wext_set_iwauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211_wext_set_iwauth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.iw_param*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %9, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_param*
  store %struct.iw_param* %16, %struct.iw_param** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IW_AUTH_INDEX, align 4
  %21 = and i32 %19, %20
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IW_AUTH_INDEX, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %106 [
    i32 129, label %28
    i32 128, label %48
    i32 130, label %68
  ]

28:                                               ; preds = %4
  %29 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %30 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %34 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = load i32, i32* @DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted, align 4
  %40 = load i32, i32* @P80211ENUM_truth_true, align 4
  %41 = call i32 @p80211wext_dorequest(%struct.TYPE_3__* %38, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  br label %47

42:                                               ; preds = %28
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = load i32, i32* @DIDmib_dot11smt_dot11PrivacyTable_dot11ExcludeUnencrypted, align 4
  %45 = load i32, i32* @P80211ENUM_truth_false, align 4
  %46 = call i32 @p80211wext_dorequest(%struct.TYPE_3__* %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %107

48:                                               ; preds = %4
  %49 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %50 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %54 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = load i32, i32* @DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked, align 4
  %60 = load i32, i32* @P80211ENUM_truth_true, align 4
  %61 = call i32 @p80211wext_dorequest(%struct.TYPE_3__* %58, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %67

62:                                               ; preds = %48
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = load i32, i32* @DIDmib_dot11smt_dot11PrivacyTable_dot11PrivacyInvoked, align 4
  %65 = load i32, i32* @P80211ENUM_truth_false, align 4
  %66 = call i32 @p80211wext_dorequest(%struct.TYPE_3__* %63, i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %57
  br label %107

68:                                               ; preds = %4
  %69 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %70 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @HOSTWEP_SHAREDKEY, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %105

83:                                               ; preds = %68
  %84 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %85 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @HOSTWEP_SHAREDKEY, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %104

97:                                               ; preds = %83
  %98 = load %struct.iw_param*, %struct.iw_param** %10, align 8
  %99 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %97, %90
  br label %105

105:                                              ; preds = %104, %75
  br label %107

106:                                              ; preds = %4
  br label %107

107:                                              ; preds = %106, %105, %67, %47
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @p80211wext_dorequest(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
