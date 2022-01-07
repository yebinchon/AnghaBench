; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_rekey_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_rekey_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr**, %struct.net_device** }
%struct.nlattr = type { i32 }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.cfg80211_gtk_rekey_data = type { i32, i32, i32 }

@NUM_NL80211_REKEY_DATA = common dso_local global i32 0, align 4
@NL80211_ATTR_REKEY_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_NL80211_REKEY_DATA = common dso_local global i32 0, align 4
@nl80211_rekey_policy = common dso_local global i32 0, align 4
@NL80211_REKEY_DATA_REPLAY_CTR = common dso_local global i64 0, align 8
@NL80211_REPLAY_CTR_LEN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@NL80211_REKEY_DATA_KEK = common dso_local global i64 0, align 8
@NL80211_KEK_LEN = common dso_local global i64 0, align 8
@NL80211_REKEY_DATA_KCK = common dso_local global i64 0, align 8
@NL80211_KCK_LEN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_rekey_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_rekey_data(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cfg80211_gtk_rekey_data, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 1
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 1
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %8, align 8
  %28 = load i32, i32* @NUM_NL80211_REKEY_DATA, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca %struct.nlattr*, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 0
  %34 = load %struct.nlattr**, %struct.nlattr*** %33, align 8
  %35 = load i64, i64* @NL80211_ATTR_REKEY_DATA, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %147

42:                                               ; preds = %2
  %43 = load i32, i32* @MAX_NL80211_REKEY_DATA, align 4
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load %struct.nlattr**, %struct.nlattr*** %45, align 8
  %47 = load i64, i64* @NL80211_ATTR_REKEY_DATA, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i32 @nla_data(%struct.nlattr* %49)
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load %struct.nlattr**, %struct.nlattr*** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_REKEY_DATA, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i64 @nla_len(%struct.nlattr* %56)
  %58 = load i32, i32* @nl80211_rekey_policy, align 4
  %59 = call i32 @nla_parse(%struct.nlattr** %31, i32 %43, i32 %50, i64 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %147

64:                                               ; preds = %42
  %65 = load i64, i64* @NL80211_REKEY_DATA_REPLAY_CTR, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i64 @nla_len(%struct.nlattr* %67)
  %69 = load i64, i64* @NL80211_REPLAY_CTR_LEN, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @ERANGE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %147

74:                                               ; preds = %64
  %75 = load i64, i64* @NL80211_REKEY_DATA_KEK, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i64 @nla_len(%struct.nlattr* %77)
  %79 = load i64, i64* @NL80211_KEK_LEN, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @ERANGE, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %147

84:                                               ; preds = %74
  %85 = load i64, i64* @NL80211_REKEY_DATA_KCK, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = call i64 @nla_len(%struct.nlattr* %87)
  %89 = load i64, i64* @NL80211_KCK_LEN, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @ERANGE, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %147

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %11, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @NL80211_REKEY_DATA_KEK, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i32 @nla_data(%struct.nlattr* %99)
  %101 = load i64, i64* @NL80211_KEK_LEN, align 8
  %102 = call i32 @memcpy(i32 %96, i32 %100, i64 %101)
  %103 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %11, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* @NL80211_REKEY_DATA_KCK, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = call i32 @nla_data(%struct.nlattr* %107)
  %109 = load i64, i64* @NL80211_KCK_LEN, align 8
  %110 = call i32 @memcpy(i32 %104, i32 %108, i64 %109)
  %111 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %11, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* @NL80211_REKEY_DATA_REPLAY_CTR, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = call i32 @nla_data(%struct.nlattr* %115)
  %117 = load i64, i64* @NL80211_REPLAY_CTR_LEN, align 8
  %118 = call i32 @memcpy(i32 %112, i32 %116, i64 %117)
  %119 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %120 = call i32 @wdev_lock(%struct.wireless_dev* %119)
  %121 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %122 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %94
  %126 = load i32, i32* @ENOTCONN, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %12, align 4
  br label %143

128:                                              ; preds = %94
  %129 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %130 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %12, align 4
  br label %143

138:                                              ; preds = %128
  %139 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %140 = bitcast %struct.cfg80211_registered_device* %139 to %struct.net_device*
  %141 = load %struct.net_device*, %struct.net_device** %7, align 8
  %142 = call i32 @rdev_set_rekey_data(%struct.net_device* %140, %struct.net_device* %141, %struct.cfg80211_gtk_rekey_data* %11)
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %138, %135, %125
  %144 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %145 = call i32 @wdev_unlock(%struct.wireless_dev* %144)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %147

147:                                              ; preds = %143, %91, %81, %71, %62, %39
  %148 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i32, i64, i32) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i64 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #2

declare dso_local i32 @rdev_set_rekey_data(%struct.net_device*, %struct.net_device*, %struct.cfg80211_gtk_rekey_data*) #2

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
