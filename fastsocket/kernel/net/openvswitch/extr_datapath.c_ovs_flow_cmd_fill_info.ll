; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i64, i32, i64, i32, i64, i32, i32 }
%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_actions = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.ovs_flow_stats = type { i64, i32 }
%struct.ovs_header = type { i32 }

@dp_flow_genl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_KEY = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_USED = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_STATS = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_TCP_FLAGS = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_ACTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow*, %struct.datapath*, %struct.sk_buff*, i32, i32, i32, i64)* @ovs_flow_cmd_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_fill_info(%struct.sw_flow* %0, %struct.datapath* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sw_flow*, align 8
  %10 = alloca %struct.datapath*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sw_flow_actions*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.ovs_flow_stats, align 8
  %20 = alloca %struct.ovs_header*, align 8
  %21 = alloca %struct.nlattr*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.sw_flow* %0, %struct.sw_flow** %9, align 8
  store %struct.datapath* %1, %struct.datapath** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %29 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.sw_flow_actions* @ovsl_dereference(i32 %30)
  store %struct.sw_flow_actions* %31, %struct.sw_flow_actions** %17, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i64, i64* %15, align 8
  %37 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %32, i32 %33, i32 %34, i32* @dp_flow_genl_family, i32 %35, i64 %36)
  store %struct.ovs_header* %37, %struct.ovs_header** %20, align 8
  %38 = load %struct.ovs_header*, %struct.ovs_header** %20, align 8
  %39 = icmp ne %struct.ovs_header* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %163

43:                                               ; preds = %7
  %44 = load %struct.datapath*, %struct.datapath** %10, align 8
  %45 = call i32 @get_dpifindex(%struct.datapath* %44)
  %46 = load %struct.ovs_header*, %struct.ovs_header** %20, align 8
  %47 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = load i32, i32* @OVS_FLOW_ATTR_KEY, align 4
  %50 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %48, i32 %49)
  store %struct.nlattr* %50, %struct.nlattr** %21, align 8
  %51 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %155

54:                                               ; preds = %43
  %55 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %56 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %55, i32 0, i32 5
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = call i32 @ovs_flow_to_nlattrs(i32* %56, %struct.sk_buff* %57)
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %24, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %158

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  %66 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %67 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %70 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %22, align 8
  %72 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %73 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.ovs_flow_stats, %struct.ovs_flow_stats* %19, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %77 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.ovs_flow_stats, %struct.ovs_flow_stats* %19, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %81 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %23, align 8
  %83 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %84 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock_bh(i32* %84)
  %86 = load i64, i64* %22, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %62
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = load i32, i32* @OVS_FLOW_ATTR_USED, align 4
  %91 = load i64, i64* %22, align 8
  %92 = call i32 @ovs_flow_used_time(i64 %91)
  %93 = call i64 @nla_put_u64(%struct.sk_buff* %89, i32 %90, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %155

96:                                               ; preds = %88, %62
  %97 = getelementptr inbounds %struct.ovs_flow_stats, %struct.ovs_flow_stats* %19, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = load i32, i32* @OVS_FLOW_ATTR_STATS, align 4
  %103 = call i64 @nla_put(%struct.sk_buff* %101, i32 %102, i32 16, %struct.ovs_flow_stats* %19)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %155

106:                                              ; preds = %100, %96
  %107 = load i64, i64* %23, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %111 = load i32, i32* @OVS_FLOW_ATTR_TCP_FLAGS, align 4
  %112 = load i64, i64* %23, align 8
  %113 = call i64 @nla_put_u8(%struct.sk_buff* %110, i32 %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %155

116:                                              ; preds = %109, %106
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = load i32, i32* @OVS_FLOW_ATTR_ACTIONS, align 4
  %119 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %117, i32 %118)
  store %struct.nlattr* %119, %struct.nlattr** %18, align 8
  %120 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %121 = icmp ne %struct.nlattr* %120, null
  br i1 %121, label %122, label %146

122:                                              ; preds = %116
  %123 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %17, align 8
  %124 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %17, align 8
  %127 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %130 = call i32 @actions_to_attr(i32 %125, i32 %128, %struct.sk_buff* %129)
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %24, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %122
  %134 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %135 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %136 = call i32 @nla_nest_end(%struct.sk_buff* %134, %struct.nlattr* %135)
  br label %145

137:                                              ; preds = %122
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %158

141:                                              ; preds = %137
  %142 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %143 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %144 = call i32 @nla_nest_cancel(%struct.sk_buff* %142, %struct.nlattr* %143)
  br label %145

145:                                              ; preds = %141, %133
  br label %151

146:                                              ; preds = %116
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %155

150:                                              ; preds = %146
  br label %151

151:                                              ; preds = %150, %145
  %152 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %153 = load %struct.ovs_header*, %struct.ovs_header** %20, align 8
  %154 = call i32 @genlmsg_end(%struct.sk_buff* %152, %struct.ovs_header* %153)
  store i32 %154, i32* %8, align 4
  br label %163

155:                                              ; preds = %149, %115, %105, %95, %53
  %156 = load i32, i32* @EMSGSIZE, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %24, align 4
  br label %158

158:                                              ; preds = %155, %140, %61
  %159 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %160 = load %struct.ovs_header*, %struct.ovs_header** %20, align 8
  %161 = call i32 @genlmsg_cancel(%struct.sk_buff* %159, %struct.ovs_header* %160)
  %162 = load i32, i32* %24, align 4
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %158, %151, %40
  %164 = load i32, i32* %8, align 4
  ret i32 %164
}

declare dso_local %struct.sw_flow_actions* @ovsl_dereference(i32) #1

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i64) #1

declare dso_local i32 @get_dpifindex(%struct.datapath*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @ovs_flow_to_nlattrs(i32*, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_flow_used_time(i64) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.ovs_flow_stats*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @actions_to_attr(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, %struct.ovs_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
