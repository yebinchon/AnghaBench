; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i8**, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ovs_header = type { i32 }
%struct.datapath = type { i32 }
%struct.flow_table = type { i32 }
%struct.sw_flow = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@OVS_FLOW_CMD_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ovs_flow_cmd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.ovs_header*, align 8
  %7 = alloca %struct.datapath*, align 8
  %8 = alloca %struct.flow_table*, align 8
  %9 = alloca %struct.sw_flow*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @nlmsg_data(%struct.TYPE_3__* %15)
  %17 = call %struct.ovs_header* @genlmsg_data(i32 %16)
  store %struct.ovs_header* %17, %struct.ovs_header** %6, align 8
  %18 = call i32 (...) @ovs_lock()
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sock_net(i32 %21)
  %23 = load %struct.ovs_header*, %struct.ovs_header** %6, align 8
  %24 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.datapath* @get_dp(i32 %22, i32 %25)
  store %struct.datapath* %26, %struct.datapath** %7, align 8
  %27 = load %struct.datapath*, %struct.datapath** %7, align 8
  %28 = icmp ne %struct.datapath* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = call i32 (...) @ovs_unlock()
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %2
  %34 = load %struct.datapath*, %struct.datapath** %7, align 8
  %35 = getelementptr inbounds %struct.datapath, %struct.datapath* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.flow_table* @ovsl_dereference(i32 %36)
  store %struct.flow_table* %37, %struct.flow_table** %8, align 8
  br label %38

38:                                               ; preds = %75, %33
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %40 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %45 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  %49 = load %struct.flow_table*, %struct.flow_table** %8, align 8
  %50 = call %struct.sw_flow* @ovs_flow_tbl_next(%struct.flow_table* %49, i8** %10, i8** %11)
  store %struct.sw_flow* %50, %struct.sw_flow** %9, align 8
  %51 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %52 = icmp ne %struct.sw_flow* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %86

54:                                               ; preds = %38
  %55 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %56 = load %struct.datapath*, %struct.datapath** %7, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %59 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @NETLINK_CB(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %66 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NLM_F_MULTI, align 4
  %71 = load i32, i32* @OVS_FLOW_CMD_NEW, align 4
  %72 = call i64 @ovs_flow_cmd_fill_info(%struct.sw_flow* %55, %struct.datapath* %56, %struct.sk_buff* %57, i32 %64, i32 %69, i32 %70, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  br label %86

75:                                               ; preds = %54
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %78 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %83 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  store i8* %81, i8** %85, align 8
  br label %38

86:                                               ; preds = %74, %53
  %87 = call i32 (...) @ovs_unlock()
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %29
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.ovs_header* @genlmsg_data(i32) #1

declare dso_local i32 @nlmsg_data(%struct.TYPE_3__*) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local %struct.flow_table* @ovsl_dereference(i32) #1

declare dso_local %struct.sw_flow* @ovs_flow_tbl_next(%struct.flow_table*, i8**, i8**) #1

declare dso_local i64 @ovs_flow_cmd_fill_info(%struct.sw_flow*, %struct.datapath*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
