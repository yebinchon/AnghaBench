; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.vport = type { i32 }

@OVS_VPORT_CMD_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ovs_header*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.vport*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 3
  %13 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  store %struct.nlattr** %13, %struct.nlattr*** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 2
  %16 = load %struct.ovs_header*, %struct.ovs_header** %15, align 8
  store %struct.ovs_header* %16, %struct.ovs_header** %7, align 8
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sock_net(i32 %20)
  %22 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %24 = call %struct.vport* @lookup_vport(i32 %21, %struct.ovs_header* %22, %struct.nlattr** %23)
  store %struct.vport* %24, %struct.vport** %9, align 8
  %25 = load %struct.vport*, %struct.vport** %9, align 8
  %26 = call i32 @PTR_ERR(%struct.vport* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.vport*, %struct.vport** %9, align 8
  %28 = call i64 @IS_ERR(%struct.vport* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %56

31:                                               ; preds = %2
  %32 = load %struct.vport*, %struct.vport** %9, align 8
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OVS_VPORT_CMD_NEW, align 4
  %40 = call %struct.vport* @ovs_vport_cmd_build_info(%struct.vport* %32, i32 %35, i32 %38, i32 %39)
  %41 = bitcast %struct.vport* %40 to %struct.sk_buff*
  store %struct.sk_buff* %41, %struct.sk_buff** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = bitcast %struct.sk_buff* %42 to %struct.vport*
  %44 = call i32 @PTR_ERR(%struct.vport* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = bitcast %struct.sk_buff* %45 to %struct.vport*
  %47 = call i64 @IS_ERR(%struct.vport* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %56

50:                                               ; preds = %31
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = bitcast %struct.sk_buff* %52 to %struct.vport*
  %54 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %55 = call i32 @genlmsg_reply(%struct.vport* %53, %struct.genl_info* %54)
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %49, %30
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vport* @lookup_vport(i32, %struct.ovs_header*, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local %struct.vport* @ovs_vport_cmd_build_info(%struct.vport*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_reply(%struct.vport*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
