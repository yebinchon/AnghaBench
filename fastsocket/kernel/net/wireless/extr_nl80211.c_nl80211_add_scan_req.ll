; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_add_scan_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_add_scan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.cfg80211_scan_request* }
%struct.cfg80211_scan_request = type { i32, i32, i64, i64, i32, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_SCAN_SSIDS = common dso_local global i32 0, align 4
@NL80211_ATTR_SCAN_FREQUENCIES = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_SCAN_FLAGS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_registered_device*)* @nl80211_add_scan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_add_scan_req(%struct.sk_buff* %0, %struct.cfg80211_registered_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cfg80211_registered_device* %1, %struct.cfg80211_registered_device** %5, align 8
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 1
  %11 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %10, align 8
  store %struct.cfg80211_scan_request* %11, %struct.cfg80211_scan_request** %6, align 8
  %12 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %13 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %16 = icmp ne %struct.cfg80211_scan_request* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %134

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @NL80211_ATTR_SCAN_SSIDS, align 4
  %25 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %23, i32 %24)
  store %struct.nlattr* %25, %struct.nlattr** %7, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %131

29:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %39, i32 0, i32 6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %48 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %47, i32 0, i32 6
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @nla_put(%struct.sk_buff* %37, i32 %38, i32 %46, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  br label %131

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %30

62:                                               ; preds = %30
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* @NL80211_ATTR_SCAN_FREQUENCIES, align 4
  %68 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %66, i32 %67)
  store %struct.nlattr* %68, %struct.nlattr** %7, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %131

72:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %95, %72
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %76 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %83 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %82, i32 0, i32 5
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @nla_put_u32(%struct.sk_buff* %80, i32 %81, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %131

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %73

98:                                               ; preds = %73
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %101 = call i32 @nla_nest_end(%struct.sk_buff* %99, %struct.nlattr* %100)
  %102 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %103 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = load i32, i32* @NL80211_ATTR_IE, align 4
  %109 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %110 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %113 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @nla_put(%struct.sk_buff* %107, i32 %108, i32 %111, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %131

118:                                              ; preds = %106, %98
  %119 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %120 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load i32, i32* @NL80211_ATTR_SCAN_FLAGS, align 4
  %126 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %127 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @nla_put_u32(%struct.sk_buff* %124, i32 %125, i64 %128)
  br label %130

130:                                              ; preds = %123, %118
  store i32 0, i32* %3, align 4
  br label %134

131:                                              ; preds = %117, %93, %71, %57, %28
  %132 = load i32, i32* @ENOBUFS, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %130, %21
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
