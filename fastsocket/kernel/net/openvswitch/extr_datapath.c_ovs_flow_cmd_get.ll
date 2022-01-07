; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.sw_flow = type { i32 }
%struct.datapath = type { i32 }
%struct.flow_table = type { i32 }

@OVS_FLOW_ATTR_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OVS_FLOW_CMD_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_flow_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ovs_header*, align 8
  %8 = alloca %struct.sw_flow_key, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sw_flow*, align 8
  %11 = alloca %struct.datapath*, align 8
  %12 = alloca %struct.flow_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 3
  %17 = load %struct.nlattr**, %struct.nlattr*** %16, align 8
  store %struct.nlattr** %17, %struct.nlattr*** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load %struct.ovs_header*, %struct.ovs_header** %19, align 8
  store %struct.ovs_header* %20, %struct.ovs_header** %7, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %22 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %2
  %30 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %31 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @ovs_flow_from_nlattrs(%struct.sw_flow_key* %8, i32* %14, %struct.nlattr* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %3, align 4
  br label %92

39:                                               ; preds = %29
  %40 = call i32 (...) @ovs_lock()
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sock_net(i32 %43)
  %45 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %46 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.datapath* @get_dp(i32 %44, i32 %47)
  store %struct.datapath* %48, %struct.datapath** %11, align 8
  %49 = load %struct.datapath*, %struct.datapath** %11, align 8
  %50 = icmp ne %struct.datapath* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %89

54:                                               ; preds = %39
  %55 = load %struct.datapath*, %struct.datapath** %11, align 8
  %56 = getelementptr inbounds %struct.datapath, %struct.datapath* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.flow_table* @ovsl_dereference(i32 %57)
  store %struct.flow_table* %58, %struct.flow_table** %12, align 8
  %59 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.sw_flow* @ovs_flow_tbl_lookup(%struct.flow_table* %59, %struct.sw_flow_key* %8, i32 %60)
  store %struct.sw_flow* %61, %struct.sw_flow** %10, align 8
  %62 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %63 = icmp ne %struct.sw_flow* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %13, align 4
  br label %89

67:                                               ; preds = %54
  %68 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %69 = load %struct.datapath*, %struct.datapath** %11, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @OVS_FLOW_CMD_NEW, align 4
  %77 = call %struct.sk_buff* @ovs_flow_cmd_build_info(%struct.sw_flow* %68, %struct.datapath* %69, i32 %72, i32 %75, i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %9, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i64 @IS_ERR(%struct.sk_buff* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = call i32 @PTR_ERR(%struct.sk_buff* %82)
  store i32 %83, i32* %13, align 4
  br label %89

84:                                               ; preds = %67
  %85 = call i32 (...) @ovs_unlock()
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %88 = call i32 @genlmsg_reply(%struct.sk_buff* %86, %struct.genl_info* %87)
  store i32 %88, i32* %3, align 4
  br label %92

89:                                               ; preds = %81, %64, %51
  %90 = call i32 (...) @ovs_unlock()
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %84, %37, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @ovs_flow_from_nlattrs(%struct.sw_flow_key*, i32*, %struct.nlattr*) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local %struct.flow_table* @ovsl_dereference(i32) #1

declare dso_local %struct.sw_flow* @ovs_flow_tbl_lookup(%struct.flow_table*, %struct.sw_flow_key*, i32) #1

declare dso_local %struct.sk_buff* @ovs_flow_cmd_build_info(%struct.sw_flow*, %struct.datapath*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
