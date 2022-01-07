; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mgmt_stypes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mgmt_stypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_txrx_stypes = type { i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_TX_FRAME_TYPES = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NUM_NL80211_IFTYPES = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME_TYPE = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@NL80211_ATTR_RX_FRAME_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_txrx_stypes*)* @nl80211_send_mgmt_stypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_mgmt_stypes(%struct.sk_buff* %0, %struct.ieee80211_txrx_stypes* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_txrx_stypes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_txrx_stypes* %1, %struct.ieee80211_txrx_stypes** %5, align 8
  %11 = load %struct.ieee80211_txrx_stypes*, %struct.ieee80211_txrx_stypes** %5, align 8
  %12 = icmp ne %struct.ieee80211_txrx_stypes* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @NL80211_ATTR_TX_FRAME_TYPES, align 4
  %17 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %8, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %143

23:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %72, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NUM_NL80211_IFTYPES, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %29, i32 %30)
  store %struct.nlattr* %31, %struct.nlattr** %7, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %143

37:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  %38 = load %struct.ieee80211_txrx_stypes*, %struct.ieee80211_txrx_stypes** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes* %38, i64 %40
  %42 = getelementptr inbounds %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %63, %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @NL80211_ATTR_FRAME_TYPE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 4
  %56 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @nla_put_u16(%struct.sk_buff* %52, i32 %53, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOBUFS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %143

63:                                               ; preds = %51, %47
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %71 = call i32 @nla_nest_end(%struct.sk_buff* %69, %struct.nlattr* %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %24

75:                                               ; preds = %24
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %78 = call i32 @nla_nest_end(%struct.sk_buff* %76, %struct.nlattr* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load i32, i32* @NL80211_ATTR_RX_FRAME_TYPES, align 4
  %81 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %79, i32 %80)
  store %struct.nlattr* %81, %struct.nlattr** %8, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @ENOBUFS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %143

87:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %136, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @NUM_NL80211_IFTYPES, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %139

92:                                               ; preds = %88
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %93, i32 %94)
  store %struct.nlattr* %95, %struct.nlattr** %7, align 8
  %96 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %97 = icmp ne %struct.nlattr* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @ENOBUFS, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %143

101:                                              ; preds = %92
  store i32 0, i32* %10, align 4
  %102 = load %struct.ieee80211_txrx_stypes*, %struct.ieee80211_txrx_stypes** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes* %102, i64 %104
  %106 = getelementptr inbounds %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %127, %101
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i32, i32* @NL80211_ATTR_FRAME_TYPE, align 4
  %118 = load i32, i32* %10, align 4
  %119 = shl i32 %118, 4
  %120 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %121 = or i32 %119, %120
  %122 = call i64 @nla_put_u16(%struct.sk_buff* %116, i32 %117, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @ENOBUFS, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %143

127:                                              ; preds = %115, %111
  %128 = load i32, i32* %6, align 4
  %129 = ashr i32 %128, 1
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %108

132:                                              ; preds = %108
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %135 = call i32 @nla_nest_end(%struct.sk_buff* %133, %struct.nlattr* %134)
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %88

139:                                              ; preds = %88
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %142 = call i32 @nla_nest_end(%struct.sk_buff* %140, %struct.nlattr* %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %124, %98, %84, %60, %34, %20, %13
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
