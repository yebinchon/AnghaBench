; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c___set_regdom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c___set_regdom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.wiphy = type { i64 }
%struct.regulatory_request = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid regulatory domain detected:\0A\00", align 1
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i64 0, align 8
@reg_timeout = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*)* @__set_regdom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_regdom(%struct.ieee80211_regdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.regulatory_request*, align 8
  %8 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %3, align 8
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %5, align 8
  %9 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %9, %struct.regulatory_request** %7, align 8
  %10 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @reg_is_valid_request(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %176

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_world_regdom(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %26 = call i32 @update_world_regdomain(%struct.ieee80211_regdomain* %25)
  store i32 0, i32* %2, align 4
  br label %176

27:                                               ; preds = %18
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @is_alpha2_set(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_an_alpha2(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @is_unknown_alpha2(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %176

48:                                               ; preds = %39, %33, %27
  %49 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %50 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regdom_changes(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @EALREADY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %176

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %66 = call i32 @is_valid_rd(%struct.ieee80211_regdomain* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %71 = call i32 @print_regdomain_info(%struct.ieee80211_regdomain* %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %176

74:                                               ; preds = %64
  %75 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %76 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.wiphy* @wiphy_idx_to_wiphy(i32 %77)
  store %struct.wiphy* %78, %struct.wiphy** %6, align 8
  %79 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %80 = icmp ne %struct.wiphy* %79, null
  br i1 %80, label %97, label %81

81:                                               ; preds = %74
  %82 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %83 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NL80211_REGDOM_SET_BY_DRIVER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %89 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %81
  %94 = call i32 @schedule_delayed_work(i32* @reg_timeout, i32 0)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %176

97:                                               ; preds = %87, %74
  %98 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %99 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %136, label %102

102:                                              ; preds = %97
  %103 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %104 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NL80211_REGDOM_SET_BY_DRIVER, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %110 = call i32 @reset_regdomains(i32 0, %struct.ieee80211_regdomain* %109)
  store i32 0, i32* %2, align 4
  br label %176

111:                                              ; preds = %102
  %112 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %113 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EALREADY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %176

119:                                              ; preds = %111
  %120 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %121 = call %struct.ieee80211_regdomain* @reg_copy_regd(%struct.ieee80211_regdomain* %120)
  store %struct.ieee80211_regdomain* %121, %struct.ieee80211_regdomain** %4, align 8
  %122 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %123 = call i64 @IS_ERR(%struct.ieee80211_regdomain* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %127 = call i32 @PTR_ERR(%struct.ieee80211_regdomain* %126)
  store i32 %127, i32* %2, align 4
  br label %176

128:                                              ; preds = %119
  %129 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %130 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %133 = call i32 @rcu_assign_pointer(i64 %131, %struct.ieee80211_regdomain* %132)
  %134 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %135 = call i32 @reset_regdomains(i32 0, %struct.ieee80211_regdomain* %134)
  store i32 0, i32* %2, align 4
  br label %176

136:                                              ; preds = %97
  %137 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %138 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %136
  %143 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %144 = call i32 (...) @get_cfg80211_regdom()
  %145 = call %struct.ieee80211_regdomain* @regdom_intersect(%struct.ieee80211_regdomain* %143, i32 %144)
  store %struct.ieee80211_regdomain* %145, %struct.ieee80211_regdomain** %5, align 8
  %146 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %147 = icmp ne %struct.ieee80211_regdomain* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %176

151:                                              ; preds = %142
  %152 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %153 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @NL80211_REGDOM_SET_BY_DRIVER, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %159 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %158)
  store %struct.ieee80211_regdomain* %159, %struct.ieee80211_regdomain** %8, align 8
  %160 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %161 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %164 = call i32 @rcu_assign_pointer(i64 %162, %struct.ieee80211_regdomain* %163)
  %165 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %8, align 8
  %166 = call i32 @rcu_free_regdom(%struct.ieee80211_regdomain* %165)
  br label %170

167:                                              ; preds = %151
  %168 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %169 = call i32 @kfree(%struct.ieee80211_regdomain* %168)
  br label %170

170:                                              ; preds = %167, %157
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  %171 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %172 = call i32 @reset_regdomains(i32 0, %struct.ieee80211_regdomain* %171)
  store i32 0, i32* %2, align 4
  br label %176

173:                                              ; preds = %136
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %173, %170, %148, %128, %125, %116, %108, %93, %68, %60, %45, %24, %15
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @reg_is_valid_request(i32) #1

declare dso_local i64 @is_world_regdom(i32) #1

declare dso_local i32 @update_world_regdomain(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @is_alpha2_set(i32) #1

declare dso_local i32 @is_an_alpha2(i32) #1

declare dso_local i32 @is_unknown_alpha2(i32) #1

declare dso_local i32 @regdom_changes(i32) #1

declare dso_local i32 @is_valid_rd(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @print_regdomain_info(%struct.ieee80211_regdomain*) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @reset_regdomains(i32, %struct.ieee80211_regdomain*) #1

declare dso_local %struct.ieee80211_regdomain* @reg_copy_regd(%struct.ieee80211_regdomain*) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.ieee80211_regdomain*) #1

declare dso_local %struct.ieee80211_regdomain* @regdom_intersect(%struct.ieee80211_regdomain*, i32) #1

declare dso_local i32 @get_cfg80211_regdom(...) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local i32 @rcu_free_regdom(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
