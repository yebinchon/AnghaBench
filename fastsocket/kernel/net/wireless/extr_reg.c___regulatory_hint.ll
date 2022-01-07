; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c___regulatory_hint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c___regulatory_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i64, i32, i32, i32* }
%struct.wiphy = type { i32 }
%struct.ieee80211_regdomain = type { i64, i32, i32, i32* }

@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i64 0, align 8
@REG_REQ_ALREADY_SET = common dso_local global i32 0, align 4
@REG_REQ_IGNORE = common dso_local global i32 0, align 4
@core_request_world = common dso_local global %struct.regulatory_request zeroinitializer, align 8
@rcu_head = common dso_local global i32 0, align 4
@last_request = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_USER = common dso_local global i64 0, align 8
@user_alpha2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.regulatory_request*)* @__regulatory_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__regulatory_hint(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %12 = call i32 @get_reg_request_treatment(%struct.wiphy* %10, %struct.regulatory_request* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %43 [
    i32 129, label %14
    i32 128, label %42
  ]

14:                                               ; preds = %2
  %15 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %16 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_REGDOM_SET_BY_DRIVER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = call i32 (...) @get_cfg80211_regdom()
  %22 = call %struct.regulatory_request* @reg_copy_regd(i32 %21)
  %23 = bitcast %struct.regulatory_request* %22 to %struct.ieee80211_regdomain*
  store %struct.ieee80211_regdomain* %23, %struct.ieee80211_regdomain** %6, align 8
  %24 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %25 = bitcast %struct.ieee80211_regdomain* %24 to %struct.regulatory_request*
  %26 = call i32 @IS_ERR(%struct.regulatory_request* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %30 = call i32 @kfree(%struct.regulatory_request* %29)
  %31 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %32 = bitcast %struct.ieee80211_regdomain* %31 to %struct.regulatory_request*
  %33 = call i32 @PTR_ERR(%struct.regulatory_request* %32)
  store i32 %33, i32* %3, align 4
  br label %144

34:                                               ; preds = %20
  %35 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %36 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %39 = bitcast %struct.ieee80211_regdomain* %38 to %struct.regulatory_request*
  %40 = call i32 @rcu_assign_pointer(i32 %37, %struct.regulatory_request* %39)
  br label %41

41:                                               ; preds = %34, %14
  store i32 1, i32* %7, align 4
  br label %77

42:                                               ; preds = %2
  br label %77

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %49 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL80211_REGDOM_SET_BY_DRIVER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = call i32 (...) @get_cfg80211_regdom()
  %55 = call %struct.regulatory_request* @reg_copy_regd(i32 %54)
  %56 = bitcast %struct.regulatory_request* %55 to %struct.ieee80211_regdomain*
  store %struct.ieee80211_regdomain* %56, %struct.ieee80211_regdomain** %6, align 8
  %57 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %58 = bitcast %struct.ieee80211_regdomain* %57 to %struct.regulatory_request*
  %59 = call i32 @IS_ERR(%struct.regulatory_request* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %63 = call i32 @kfree(%struct.regulatory_request* %62)
  %64 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %64, i32* %3, align 4
  br label %144

65:                                               ; preds = %53
  %66 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %68 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %71 = bitcast %struct.ieee80211_regdomain* %70 to %struct.regulatory_request*
  %72 = call i32 @rcu_assign_pointer(i32 %69, %struct.regulatory_request* %71)
  br label %78

73:                                               ; preds = %47, %43
  %74 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %75 = call i32 @kfree(%struct.regulatory_request* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %144

77:                                               ; preds = %42, %41
  br label %78

78:                                               ; preds = %77, %65
  %79 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %79, %struct.regulatory_request** %9, align 8
  %80 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %81 = icmp ne %struct.regulatory_request* %80, @core_request_world
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %84 = icmp ne %struct.regulatory_request* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %87 = load i32, i32* @rcu_head, align 4
  %88 = call i32 @kfree_rcu(%struct.regulatory_request* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %82, %78
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %92 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %94 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* @last_request, align 4
  %96 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %97 = call i32 @rcu_assign_pointer(i32 %95, %struct.regulatory_request* %96)
  %98 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  store %struct.regulatory_request* %98, %struct.regulatory_request** %9, align 8
  store %struct.regulatory_request* null, %struct.regulatory_request** %5, align 8
  %99 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %100 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %89
  %105 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %106 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @user_alpha2, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %113 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** @user_alpha2, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %104, %89
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 128
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 129
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %131 = call i32 @nl80211_send_reg_change_event(%struct.regulatory_request* %130)
  %132 = call i32 (...) @reg_set_request_processed()
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %144

135:                                              ; preds = %122, %119
  %136 = load %struct.regulatory_request*, %struct.regulatory_request** %9, align 8
  %137 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @call_crda(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %142, i32* %3, align 4
  br label %144

143:                                              ; preds = %135
  store i32 128, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %141, %133, %73, %61, %28
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @get_reg_request_treatment(%struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local %struct.regulatory_request* @reg_copy_regd(i32) #1

declare dso_local i32 @get_cfg80211_regdom(...) #1

declare dso_local i32 @IS_ERR(%struct.regulatory_request*) #1

declare dso_local i32 @kfree(%struct.regulatory_request*) #1

declare dso_local i32 @PTR_ERR(%struct.regulatory_request*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.regulatory_request*) #1

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @kfree_rcu(%struct.regulatory_request*, i32) #1

declare dso_local i32 @nl80211_send_reg_change_event(%struct.regulatory_request*) #1

declare dso_local i32 @reg_set_request_processed(...) #1

declare dso_local i64 @call_crda(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
