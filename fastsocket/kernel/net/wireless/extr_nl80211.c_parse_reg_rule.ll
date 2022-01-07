; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_parse_reg_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_parse_reg_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ieee80211_reg_rule = type { i8*, %struct.ieee80211_power_rule, %struct.ieee80211_freq_range }
%struct.ieee80211_power_rule = type { i8*, i8* }
%struct.ieee80211_freq_range = type { i8*, i8*, i8* }

@NL80211_ATTR_REG_RULE_FLAGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_RANGE_START = common dso_local global i64 0, align 8
@NL80211_ATTR_FREQ_RANGE_END = common dso_local global i64 0, align 8
@NL80211_ATTR_FREQ_RANGE_MAX_BW = common dso_local global i64 0, align 8
@NL80211_ATTR_POWER_RULE_MAX_EIRP = common dso_local global i64 0, align 8
@NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.ieee80211_reg_rule*)* @parse_reg_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reg_rule(%struct.nlattr** %0, %struct.ieee80211_reg_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  %6 = alloca %struct.ieee80211_freq_range*, align 8
  %7 = alloca %struct.ieee80211_power_rule*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule** %5, align 8
  %8 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %8, i32 0, i32 2
  store %struct.ieee80211_freq_range* %9, %struct.ieee80211_freq_range** %6, align 8
  %10 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %10, i32 0, i32 1
  store %struct.ieee80211_power_rule* %11, %struct.ieee80211_power_rule** %7, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %13 = load i64, i64* @NL80211_ATTR_REG_RULE_FLAGS, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %22 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_START, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %106

29:                                               ; preds = %20
  %30 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %31 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_END, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %106

38:                                               ; preds = %29
  %39 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %40 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_MAX_BW, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %106

47:                                               ; preds = %38
  %48 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %49 = load i64, i64* @NL80211_ATTR_POWER_RULE_MAX_EIRP, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %106

56:                                               ; preds = %47
  %57 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %58 = load i64, i64* @NL80211_ATTR_REG_RULE_FLAGS, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nla_get_u32(%struct.nlattr* %60)
  %62 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %65 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_START, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i8* @nla_get_u32(%struct.nlattr* %67)
  %69 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %72 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_END, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i8* @nla_get_u32(%struct.nlattr* %74)
  %76 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %79 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_MAX_BW, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i8* @nla_get_u32(%struct.nlattr* %81)
  %83 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %86 = load i64, i64* @NL80211_ATTR_POWER_RULE_MAX_EIRP, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %85, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i8* @nla_get_u32(%struct.nlattr* %88)
  %90 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %93 = load i64, i64* @NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %56
  %98 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %99 = load i64, i64* @NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %98, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i8* @nla_get_u32(%struct.nlattr* %101)
  %103 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %97, %56
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %53, %44, %35, %26, %17
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
