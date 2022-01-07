; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_frame_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_frame_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i64, i32*, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802_11_elems = type { i32*, i32, i32 }

@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@IEEE80211_MAX_AID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%pM indicates buffered frames\0A\00", align 1
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mps_frame_release(%struct.sta_info* %0, %struct.ieee802_11_elems* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee802_11_elems*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %15 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %18 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load i32, i32* @IEEE80211_MAX_AID, align 4
  %25 = srem i32 %23, %24
  %26 = call i32 @ieee80211_check_tim(i32 %16, i32 %19, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mps_dbg(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %30, %27
  %40 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %41 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %42 = call i64 @test_sta_flag(%struct.sta_info* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %46 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %51 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49, %44
  br label %109

57:                                               ; preds = %49, %39
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %82, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i64 @skb_queue_len(i32* %68)
  %70 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i64 @skb_queue_len(i32* %75)
  %77 = add nsw i64 %69, %76
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %58

85:                                               ; preds = %58
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %109

92:                                               ; preds = %88, %85
  %93 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @mpsp_trigger_send(%struct.sta_info* %99, i32 %100, i32 %104)
  br label %109

106:                                              ; preds = %92
  %107 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %108 = call i32 @mps_frame_deliver(%struct.sta_info* %107, i32 1)
  br label %109

109:                                              ; preds = %56, %91, %106, %98
  ret void
}

declare dso_local i32 @ieee80211_check_tim(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mps_dbg(i32, i8*, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @mpsp_trigger_send(%struct.sta_info*, i32, i32) #1

declare dso_local i32 @mps_frame_deliver(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
