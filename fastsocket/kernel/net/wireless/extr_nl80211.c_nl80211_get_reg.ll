; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_get_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.ieee80211_regdomain = type { i32, %struct.ieee80211_reg_rule*, i64, i32 }
%struct.ieee80211_reg_rule = type { i32, %struct.ieee80211_power_rule, %struct.ieee80211_freq_range }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cfg80211_mutex = common dso_local global i32 0, align 4
@cfg80211_regdomain = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_CMD_GET_REG = common dso_local global i32 0, align 4
@NL80211_ATTR_USER_REG_HINT_TYPE = common dso_local global i32 0, align 4
@NL80211_USER_REG_HINT_CELL_BASE = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_ALPHA2 = common dso_local global i32 0, align 4
@NL80211_ATTR_DFS_REGION = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_RULES = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_RULE_FLAGS = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_RANGE_START = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_RANGE_END = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_RANGE_MAX_BW = common dso_local global i32 0, align 4
@NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN = common dso_local global i32 0, align 4
@NL80211_ATTR_POWER_RULE_MAX_EIRP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_reg(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.ieee80211_reg_rule*, align 8
  %13 = alloca %struct.ieee80211_freq_range*, align 8
  %14 = alloca %struct.ieee80211_power_rule*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store i8* null, i8** %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = call i32 @mutex_lock(i32* @cfg80211_mutex)
  %18 = load i32, i32* @cfg80211_regdomain, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %187

21:                                               ; preds = %2
  %22 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @nlmsg_new(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOBUFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %187

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NL80211_CMD_GET_REG, align 4
  %39 = call i8* @nl80211hdr_put(%struct.sk_buff* %31, i32 %34, i32 %37, i32 0, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %182

43:                                               ; preds = %30
  %44 = call i64 (...) @reg_last_request_cell_base()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* @NL80211_ATTR_USER_REG_HINT_TYPE, align 4
  %49 = load i32, i32* @NL80211_USER_REG_HINT_CELL_BASE, align 4
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %178

53:                                               ; preds = %46, %43
  %54 = call i32 (...) @rcu_read_lock()
  %55 = load i32, i32* @cfg80211_regdomain, align 4
  %56 = call %struct.ieee80211_regdomain* @rcu_dereference(i32 %55)
  store %struct.ieee80211_regdomain* %56, %struct.ieee80211_regdomain** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load i32, i32* @NL80211_ATTR_REG_ALPHA2, align 4
  %59 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @nla_put_string(%struct.sk_buff* %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %53
  %65 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i32, i32* @NL80211_ATTR_DFS_REGION, align 4
  %72 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @nla_put_u8(%struct.sk_buff* %70, i32 %71, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69, %53
  br label %176

78:                                               ; preds = %69, %64
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i32, i32* @NL80211_ATTR_REG_RULES, align 4
  %81 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %79, i32 %80)
  store %struct.nlattr* %81, %struct.nlattr** %8, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %176

85:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %162, %85
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %165

92:                                               ; preds = %86
  %93 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %93, i32 0, i32 1
  %95 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %95, i64 %97
  store %struct.ieee80211_reg_rule* %98, %struct.ieee80211_reg_rule** %12, align 8
  %99 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %12, align 8
  %100 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %99, i32 0, i32 2
  store %struct.ieee80211_freq_range* %100, %struct.ieee80211_freq_range** %13, align 8
  %101 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %12, align 8
  %102 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %101, i32 0, i32 1
  store %struct.ieee80211_power_rule* %102, %struct.ieee80211_power_rule** %14, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %103, i32 %104)
  store %struct.nlattr* %105, %struct.nlattr** %11, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %107 = icmp ne %struct.nlattr* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %92
  br label %176

109:                                              ; preds = %92
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load i32, i32* @NL80211_ATTR_REG_RULE_FLAGS, align 4
  %112 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %12, align 8
  %113 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @nla_put_u32(%struct.sk_buff* %110, i32 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %157, label %117

117:                                              ; preds = %109
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* @NL80211_ATTR_FREQ_RANGE_START, align 4
  %120 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %13, align 8
  %121 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @nla_put_u32(%struct.sk_buff* %118, i32 %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %157, label %125

125:                                              ; preds = %117
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load i32, i32* @NL80211_ATTR_FREQ_RANGE_END, align 4
  %128 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %13, align 8
  %129 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @nla_put_u32(%struct.sk_buff* %126, i32 %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %157, label %133

133:                                              ; preds = %125
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load i32, i32* @NL80211_ATTR_FREQ_RANGE_MAX_BW, align 4
  %136 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %13, align 8
  %137 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @nla_put_u32(%struct.sk_buff* %134, i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %133
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = load i32, i32* @NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN, align 4
  %144 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %14, align 8
  %145 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @nla_put_u32(%struct.sk_buff* %142, i32 %143, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = load i32, i32* @NL80211_ATTR_POWER_RULE_MAX_EIRP, align 4
  %152 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %14, align 8
  %153 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @nla_put_u32(%struct.sk_buff* %150, i32 %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149, %141, %133, %125, %117, %109
  br label %176

158:                                              ; preds = %149
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %161 = call i32 @nla_nest_end(%struct.sk_buff* %159, %struct.nlattr* %160)
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %86

165:                                              ; preds = %86
  %166 = call i32 (...) @rcu_read_unlock()
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %169 = call i32 @nla_nest_end(%struct.sk_buff* %167, %struct.nlattr* %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @genlmsg_end(%struct.sk_buff* %170, i8* %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %175 = call i32 @genlmsg_reply(%struct.sk_buff* %173, %struct.genl_info* %174)
  store i32 %175, i32* %10, align 4
  br label %187

176:                                              ; preds = %157, %108, %84, %77
  %177 = call i32 (...) @rcu_read_unlock()
  br label %178

178:                                              ; preds = %176, %52
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @genlmsg_cancel(%struct.sk_buff* %179, i8* %180)
  br label %182

182:                                              ; preds = %178, %42
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = call i32 @nlmsg_free(%struct.sk_buff* %183)
  %185 = load i32, i32* @EMSGSIZE, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %182, %165, %27, %20
  %188 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %189 = load i32, i32* %10, align 4
  ret i32 %189
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @reg_last_request_cell_base(...) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_regdomain* @rcu_dereference(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
