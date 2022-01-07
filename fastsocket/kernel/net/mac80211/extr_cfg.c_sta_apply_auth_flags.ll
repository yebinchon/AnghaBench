; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_apply_auth_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_apply_auth_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }

@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sta_info*, i32, i32)* @sta_apply_auth_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_apply_auth_flags(%struct.ieee80211_local* %0, %struct.sta_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %24 = load i32, i32* @WLAN_STA_AUTH, align 4
  %25 = call i64 @test_sta_flag(%struct.sta_info* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %29 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %30 = call i32 @sta_info_move_state(%struct.sta_info* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %148

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22, %16, %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %50 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %51 = call i64 @test_sta_flag(%struct.sta_info* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %55 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %56 = call i32 @sta_info_move_state(%struct.sta_info* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %148

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %48, %42, %36
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %76 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %77 = call i32 @sta_info_move_state(%struct.sta_info* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %89

78:                                               ; preds = %68
  %79 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %80 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %81 = call i64 @test_sta_flag(%struct.sta_info* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %85 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %86 = call i32 @sta_info_move_state(%struct.sta_info* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %83
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %148

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %62
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %104 = call i32 @BIT(i32 %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %101
  %108 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %109 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %110 = call i64 @test_sta_flag(%struct.sta_info* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %114 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %115 = call i32 @sta_info_move_state(%struct.sta_info* %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %5, align 4
  br label %148

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %107, %101, %95
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %124 = call i32 @BIT(i32 %123)
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %130 = call i32 @BIT(i32 %129)
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %127
  %134 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %135 = load i32, i32* @WLAN_STA_AUTH, align 4
  %136 = call i64 @test_sta_flag(%struct.sta_info* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %140 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %141 = call i32 @sta_info_move_state(%struct.sta_info* %139, i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %5, align 4
  br label %148

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %133, %127, %121
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %144, %118, %92, %59, %33
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_info_move_state(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
