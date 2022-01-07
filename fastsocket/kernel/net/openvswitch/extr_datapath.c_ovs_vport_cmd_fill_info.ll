; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.vport*)*, i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_header = type { i32 }
%struct.ovs_vport_stats = type { i32 }

@dp_vport_genl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_PORT_NO = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_TYPE = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_NAME = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_UPCALL_PID = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vport*, %struct.sk_buff*, i32, i32, i32, i32)* @ovs_vport_cmd_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_fill_info(%struct.vport* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vport*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ovs_header*, align 8
  %15 = alloca %struct.ovs_vport_stats, align 4
  %16 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %17, i32 %18, i32 %19, i32* @dp_vport_genl_family, i32 %20, i32 %21)
  store %struct.ovs_header* %22, %struct.ovs_header** %14, align 8
  %23 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %24 = icmp ne %struct.ovs_header* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %102

28:                                               ; preds = %6
  %29 = load %struct.vport*, %struct.vport** %8, align 8
  %30 = getelementptr inbounds %struct.vport, %struct.vport* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_dpifindex(i32 %31)
  %33 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %34 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* @OVS_VPORT_ATTR_PORT_NO, align 4
  %37 = load %struct.vport*, %struct.vport** %8, align 8
  %38 = getelementptr inbounds %struct.vport, %struct.vport* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* @OVS_VPORT_ATTR_TYPE, align 4
  %45 = load %struct.vport*, %struct.vport** %8, align 8
  %46 = getelementptr inbounds %struct.vport, %struct.vport* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i32, i32* @OVS_VPORT_ATTR_NAME, align 4
  %55 = load %struct.vport*, %struct.vport** %8, align 8
  %56 = getelementptr inbounds %struct.vport, %struct.vport* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.vport*)*, i32 (%struct.vport*)** %58, align 8
  %60 = load %struct.vport*, %struct.vport** %8, align 8
  %61 = call i32 %59(%struct.vport* %60)
  %62 = call i64 @nla_put_string(%struct.sk_buff* %53, i32 %54, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %52
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load i32, i32* @OVS_VPORT_ATTR_UPCALL_PID, align 4
  %67 = load %struct.vport*, %struct.vport** %8, align 8
  %68 = getelementptr inbounds %struct.vport, %struct.vport* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @nla_put_u32(%struct.sk_buff* %65, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %52, %42, %28
  br label %94

73:                                               ; preds = %64
  %74 = load %struct.vport*, %struct.vport** %8, align 8
  %75 = call i32 @ovs_vport_get_stats(%struct.vport* %74, %struct.ovs_vport_stats* %15)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = load i32, i32* @OVS_VPORT_ATTR_STATS, align 4
  %78 = call i64 @nla_put(%struct.sk_buff* %76, i32 %77, i32 4, %struct.ovs_vport_stats* %15)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %94

81:                                               ; preds = %73
  %82 = load %struct.vport*, %struct.vport** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i32 @ovs_vport_get_options(%struct.vport* %82, %struct.sk_buff* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @EMSGSIZE, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %97

90:                                               ; preds = %81
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %93 = call i32 @genlmsg_end(%struct.sk_buff* %91, %struct.ovs_header* %92)
  store i32 %93, i32* %7, align 4
  br label %102

94:                                               ; preds = %80, %72
  %95 = load i32, i32* @EMSGSIZE, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = load %struct.ovs_header*, %struct.ovs_header** %14, align 8
  %100 = call i32 @genlmsg_cancel(%struct.sk_buff* %98, %struct.ovs_header* %99)
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %97, %90, %25
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_dpifindex(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_vport_get_stats(%struct.vport*, %struct.ovs_vport_stats*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.ovs_vport_stats*) #1

declare dso_local i32 @ovs_vport_get_options(%struct.vport*, %struct.sk_buff*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, %struct.ovs_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
