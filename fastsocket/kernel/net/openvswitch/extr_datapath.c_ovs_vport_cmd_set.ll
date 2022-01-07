; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.vport = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@OVS_VPORT_ATTR_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_OPTIONS = common dso_local global i64 0, align 8
@OVS_VPORT_ATTR_UPCALL_PID = common dso_local global i64 0, align 8
@OVS_VPORT_CMD_NEW = common dso_local global i32 0, align 4
@ovs_dp_vport_multicast_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.vport*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 3
  %12 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  store %struct.nlattr** %12, %struct.nlattr*** %6, align 8
  %13 = call i32 (...) @ovs_lock()
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sock_net(i32 %16)
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %22 = call %struct.vport* @lookup_vport(i32 %17, i32 %20, %struct.nlattr** %21)
  store %struct.vport* %22, %struct.vport** %8, align 8
  %23 = load %struct.vport*, %struct.vport** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.vport* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.vport*, %struct.vport** %8, align 8
  %26 = call i64 @IS_ERR(%struct.vport* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %112

29:                                               ; preds = %2
  %30 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %31 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %37 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i64 @nla_get_u32(%struct.nlattr* %39)
  %41 = load %struct.vport*, %struct.vport** %8, align 8
  %42 = getelementptr inbounds %struct.vport, %struct.vport* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %112

50:                                               ; preds = %35, %29
  %51 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.sk_buff* @nlmsg_new(i32 %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %112

59:                                               ; preds = %50
  %60 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %61 = load i64, i64* @OVS_VPORT_ATTR_OPTIONS, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.vport*, %struct.vport** %8, align 8
  %67 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %68 = load i64, i64* @OVS_VPORT_ATTR_OPTIONS, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i32 @ovs_vport_set_options(%struct.vport* %66, %struct.nlattr* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %109

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %78 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %84 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i64 @nla_get_u32(%struct.nlattr* %86)
  %88 = load %struct.vport*, %struct.vport** %8, align 8
  %89 = getelementptr inbounds %struct.vport, %struct.vport* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.vport*, %struct.vport** %8, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @OVS_VPORT_CMD_NEW, align 4
  %100 = call i32 @ovs_vport_cmd_fill_info(%struct.vport* %91, %struct.sk_buff* %92, i32 %95, i32 %98, i32 0, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @BUG_ON(i32 %103)
  %105 = call i32 (...) @ovs_unlock()
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %108 = call i32 @ovs_notify(%struct.sk_buff* %106, %struct.genl_info* %107, i32* @ovs_dp_vport_multicast_group)
  store i32 0, i32* %3, align 4
  br label %115

109:                                              ; preds = %74
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = call i32 @kfree_skb(%struct.sk_buff* %110)
  br label %112

112:                                              ; preds = %109, %56, %47, %28
  %113 = call i32 (...) @ovs_unlock()
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %90
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.vport* @lookup_vport(i32, i32, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @ovs_vport_set_options(%struct.vport*, %struct.nlattr*) #1

declare dso_local i32 @ovs_vport_cmd_fill_info(%struct.vport*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @ovs_notify(%struct.sk_buff*, %struct.genl_info*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
