; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_deauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_deauth_request = type { i32, i32, i32 }

@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"deauthenticating from %pM by local choice (reason=%d)\0A\00", align 1
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgd_deauth(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_deauth_request* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.cfg80211_deauth_request*, align 8
  %5 = alloca %struct.ieee80211_if_managed*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.cfg80211_deauth_request* %1, %struct.cfg80211_deauth_request** %4, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ieee80211_if_managed* %12, %struct.ieee80211_if_managed** %5, align 8
  %13 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %27 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %4, align 8
  %28 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %4, align 8
  %31 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %2
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %43 = call i32 @drv_mgd_prepare_tx(i32 %41, %struct.ieee80211_sub_if_data* %42)
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %45 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %4, align 8
  %46 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %49 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %4, align 8
  %50 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data* %44, i32 %47, i32 %48, i32 %51, i32 %52, i32* %16)
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %55 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %54, i32 0)
  %56 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 1, i32* %9, align 4
  br label %87

59:                                               ; preds = %2
  %60 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %4, align 8
  %71 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ether_addr_equal(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %64
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %77 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %78 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %4, align 8
  %79 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %76, i32 %77, i32 %80, i32 %81, i32* %16)
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %75, %64, %59
  %84 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %38
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %95 = call i32 @__cfg80211_send_deauth(i32 %93, i32* %16, i32 %94)
  br label %96

96:                                               ; preds = %90, %87
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, i32) #2

declare dso_local i32 @drv_mgd_prepare_tx(i32, %struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @ether_addr_equal(i32, i32) #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #2

declare dso_local i32 @__cfg80211_send_deauth(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
