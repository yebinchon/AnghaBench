; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_del.c"
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

@ENODEV = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_KEY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVS_FLOW_CMD_DEL = common dso_local global i32 0, align 4
@ovs_dp_flow_multicast_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_flow_cmd_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_del(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
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
  %21 = call i32 (...) @ovs_lock()
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sock_net(i32 %24)
  %26 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %27 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.datapath* @get_dp(i32 %25, i32 %28)
  store %struct.datapath* %29, %struct.datapath** %11, align 8
  %30 = load %struct.datapath*, %struct.datapath** %11, align 8
  %31 = icmp ne %struct.datapath* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %99

35:                                               ; preds = %2
  %36 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %37 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.datapath*, %struct.datapath** %11, align 8
  %43 = call i32 @flush_flows(%struct.datapath* %42)
  store i32 %43, i32* %13, align 4
  br label %99

44:                                               ; preds = %35
  %45 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %46 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @ovs_flow_from_nlattrs(%struct.sw_flow_key* %8, i32* %14, %struct.nlattr* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %99

53:                                               ; preds = %44
  %54 = load %struct.datapath*, %struct.datapath** %11, align 8
  %55 = getelementptr inbounds %struct.datapath, %struct.datapath* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.flow_table* @ovsl_dereference(i32 %56)
  store %struct.flow_table* %57, %struct.flow_table** %12, align 8
  %58 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call %struct.sw_flow* @ovs_flow_tbl_lookup(%struct.flow_table* %58, %struct.sw_flow_key* %8, i32 %59)
  store %struct.sw_flow* %60, %struct.sw_flow** %10, align 8
  %61 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %62 = icmp ne %struct.sw_flow* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %99

66:                                               ; preds = %53
  %67 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %68 = call %struct.sk_buff* @ovs_flow_cmd_alloc_info(%struct.sw_flow* %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %99

74:                                               ; preds = %66
  %75 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %76 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %77 = call i32 @ovs_flow_tbl_remove(%struct.flow_table* %75, %struct.sw_flow* %76)
  %78 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %79 = load %struct.datapath*, %struct.datapath** %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @OVS_FLOW_CMD_DEL, align 4
  %88 = call i32 @ovs_flow_cmd_fill_info(%struct.sw_flow* %78, %struct.datapath* %79, %struct.sk_buff* %80, i32 %83, i32 %86, i32 0, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.sw_flow*, %struct.sw_flow** %10, align 8
  %94 = call i32 @ovs_flow_deferred_free(%struct.sw_flow* %93)
  %95 = call i32 (...) @ovs_unlock()
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %98 = call i32 @ovs_notify(%struct.sk_buff* %96, %struct.genl_info* %97, i32* @ovs_dp_flow_multicast_group)
  store i32 0, i32* %3, align 4
  br label %102

99:                                               ; preds = %71, %63, %52, %41, %32
  %100 = call i32 (...) @ovs_unlock()
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %74
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @flush_flows(%struct.datapath*) #1

declare dso_local i32 @ovs_flow_from_nlattrs(%struct.sw_flow_key*, i32*, %struct.nlattr*) #1

declare dso_local %struct.flow_table* @ovsl_dereference(i32) #1

declare dso_local %struct.sw_flow* @ovs_flow_tbl_lookup(%struct.flow_table*, %struct.sw_flow_key*, i32) #1

declare dso_local %struct.sk_buff* @ovs_flow_cmd_alloc_info(%struct.sw_flow*) #1

declare dso_local i32 @ovs_flow_tbl_remove(%struct.flow_table*, %struct.sw_flow*) #1

declare dso_local i32 @ovs_flow_cmd_fill_info(%struct.sw_flow*, %struct.datapath*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ovs_flow_deferred_free(%struct.sw_flow*) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @ovs_notify(%struct.sk_buff*, %struct.genl_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
