; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.genl_info = type { i32, i32, i32, %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.vport = type { i64, i32 }

@OVSP_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_VPORT_CMD_DEL = common dso_local global i32 0, align 4
@ovs_dp_vport_multicast_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_del(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vport*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 3
  %11 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  store %struct.nlattr** %11, %struct.nlattr*** %5, align 8
  %12 = call i32 (...) @ovs_lock()
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sock_net(i32 %15)
  %17 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = call %struct.vport* @lookup_vport(i32 %16, i32 %19, %struct.nlattr** %20)
  store %struct.vport* %21, %struct.vport** %7, align 8
  %22 = load %struct.vport*, %struct.vport** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.vport* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.vport*, %struct.vport** %7, align 8
  %25 = call i64 @IS_ERR(%struct.vport* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %63

28:                                               ; preds = %2
  %29 = load %struct.vport*, %struct.vport** %7, align 8
  %30 = getelementptr inbounds %struct.vport, %struct.vport* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OVSP_LOCAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %63

37:                                               ; preds = %28
  %38 = load %struct.vport*, %struct.vport** %7, align 8
  %39 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OVS_VPORT_CMD_DEL, align 4
  %46 = call %struct.vport* @ovs_vport_cmd_build_info(%struct.vport* %38, i32 %41, i32 %44, i32 %45)
  %47 = bitcast %struct.vport* %46 to %struct.sk_buff*
  store %struct.sk_buff* %47, %struct.sk_buff** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = bitcast %struct.sk_buff* %48 to %struct.vport*
  %50 = call i32 @PTR_ERR(%struct.vport* %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = bitcast %struct.sk_buff* %51 to %struct.vport*
  %53 = call i64 @IS_ERR(%struct.vport* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %63

56:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  %57 = load %struct.vport*, %struct.vport** %7, align 8
  %58 = call i32 @ovs_dp_detach_port(%struct.vport* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = bitcast %struct.sk_buff* %59 to %struct.vport*
  %61 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %62 = call i32 @ovs_notify(%struct.vport* %60, %struct.genl_info* %61, i32* @ovs_dp_vport_multicast_group)
  br label %63

63:                                               ; preds = %56, %55, %34, %27
  %64 = call i32 (...) @ovs_unlock()
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.vport* @lookup_vport(i32, i32, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local %struct.vport* @ovs_vport_cmd_build_info(%struct.vport*, i32, i32, i32) #1

declare dso_local i32 @ovs_dp_detach_port(%struct.vport*) #1

declare dso_local i32 @ovs_notify(%struct.vport*, %struct.genl_info*, i32*) #1

declare dso_local i32 @ovs_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
