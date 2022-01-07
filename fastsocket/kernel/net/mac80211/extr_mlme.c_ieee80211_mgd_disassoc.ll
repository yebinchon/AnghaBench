; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_disassoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_disassoc_request = type { i32, i32, %struct.TYPE_4__* }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"disassociating from %pM by local choice (reason=%d)\0A\00", align 1
@IEEE80211_STYPE_DISASSOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgd_disassoc(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_disassoc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_disassoc_request*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_disassoc_request* %1, %struct.cfg80211_disassoc_request** %5, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.ieee80211_if_managed* %13, %struct.ieee80211_if_managed** %6, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @ENOLINK, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %39 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %40 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %45 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %49 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @memcpy(i32* %17, i32 %52, i32 %53)
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %56 = load i32, i32* @IEEE80211_STYPE_DISASSOC, align 4
  %57 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %58 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %55, i32 %56, i32 %59, i32 %65, i32* %20)
  %67 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %74 = call i32 @__cfg80211_send_disassoc(i32 %72, i32* %20, i32 %73)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %37, %31
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #2

declare dso_local i32 @__cfg80211_send_disassoc(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
