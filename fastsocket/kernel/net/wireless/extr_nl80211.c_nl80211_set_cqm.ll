; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_cqm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_cqm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }

@NL80211_ATTR_CQM_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nl80211_attr_cqm_policy = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_RSSI_THOLD = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_RSSI_HYST = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_TXE_RATE = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_TXE_PKTS = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_TXE_INTVL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_cqm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_cqm(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %14 = load i32, i32* @NL80211_ATTR_CQM_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load %struct.nlattr**, %struct.nlattr*** %20, align 8
  %22 = load i64, i64* @NL80211_ATTR_CQM, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  store %struct.nlattr* %24, %struct.nlattr** %7, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %99

30:                                               ; preds = %2
  %31 = load i32, i32* @NL80211_ATTR_CQM_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %33 = load i32, i32* @nl80211_attr_cqm_policy, align 4
  %34 = call i32 @nla_parse_nested(%struct.nlattr** %18, i32 %31, %struct.nlattr* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %99

38:                                               ; preds = %30
  %39 = load i64, i64* @NL80211_ATTR_CQM_RSSI_THOLD, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load i64, i64* @NL80211_ATTR_CQM_RSSI_HYST, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i64, i64* @NL80211_ATTR_CQM_RSSI_THOLD, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i8* @nla_get_u32(%struct.nlattr* %51)
  store i8* %52, i8** %9, align 8
  %53 = load i64, i64* @NL80211_ATTR_CQM_RSSI_HYST, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i8* @nla_get_u32(%struct.nlattr* %55)
  store i8* %56, i8** %10, align 8
  %57 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @nl80211_set_cqm_rssi(%struct.genl_info* %57, i8* %58, i8* %59)
  store i32 %60, i32* %8, align 4
  br label %98

61:                                               ; preds = %43, %38
  %62 = load i64, i64* @NL80211_ATTR_CQM_TXE_RATE, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = load i64, i64* @NL80211_ATTR_CQM_TXE_PKTS, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load i64, i64* @NL80211_ATTR_CQM_TXE_INTVL, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i64, i64* @NL80211_ATTR_CQM_TXE_RATE, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call i8* @nla_get_u32(%struct.nlattr* %79)
  store i8* %80, i8** %11, align 8
  %81 = load i64, i64* @NL80211_ATTR_CQM_TXE_PKTS, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i8* @nla_get_u32(%struct.nlattr* %83)
  store i8* %84, i8** %12, align 8
  %85 = load i64, i64* @NL80211_ATTR_CQM_TXE_INTVL, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = call i8* @nla_get_u32(%struct.nlattr* %87)
  store i8* %88, i8** %13, align 8
  %89 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @nl80211_set_cqm_txe(%struct.genl_info* %89, i8* %90, i8* %91, i8* %92)
  store i32 %93, i32* %8, align 4
  br label %97

94:                                               ; preds = %71, %66, %61
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %76
  br label %98

98:                                               ; preds = %97, %48
  br label %99

99:                                               ; preds = %98, %37, %27
  %100 = load i32, i32* %8, align 4
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nl80211_set_cqm_rssi(%struct.genl_info*, i8*, i8*) #2

declare dso_local i32 @nl80211_set_cqm_txe(%struct.genl_info*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
