; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-vxlan.c_vxlan_tnl_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-vxlan.c_vxlan_tnl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type opaque
%struct.vport_parms = type { i32, %struct.nlattr*, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.vxlan_port = type { i8*, i32 }
%struct.vxlan_sock = type opaque

@EINVAL = common dso_local global i32 0, align 4
@OVS_TUNNEL_ATTR_DST_PORT = common dso_local global i32 0, align 4
@ovs_vxlan_vport_ops = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@vxlan_rcv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.vport_parms*)* @vxlan_tnl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @vxlan_tnl_create(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.vxlan_port*, align 8
  %7 = alloca %struct.vxlan_sock*, align 8
  %8 = alloca %struct.vport*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  %12 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %13 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.net* @ovs_dp_get_net(i32 %14)
  store %struct.net* %15, %struct.net** %4, align 8
  %16 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %17 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %16, i32 0, i32 1
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  store %struct.nlattr* %18, %struct.nlattr** %5, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %26 = load i32, i32* @OVS_TUNNEL_ATTR_DST_PORT, align 4
  %27 = call %struct.nlattr* @nla_find_nested(%struct.nlattr* %25, i32 %26)
  store %struct.nlattr* %27, %struct.nlattr** %9, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %32 = call i32 @nla_len(%struct.nlattr* %31)
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %37 = call i32 @nla_get_u16(%struct.nlattr* %36)
  store i32 %37, i32* %10, align 4
  br label %41

38:                                               ; preds = %30, %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %88

41:                                               ; preds = %35
  %42 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %43 = call i8* @ovs_vport_alloc(i32 16, i32* @ovs_vxlan_vport_ops, %struct.vport_parms* %42)
  %44 = bitcast i8* %43 to %struct.vport*
  store %struct.vport* %44, %struct.vport** %8, align 8
  %45 = load %struct.vport*, %struct.vport** %8, align 8
  %46 = bitcast %struct.vport* %45 to i8*
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load %struct.vport*, %struct.vport** %8, align 8
  store %struct.vport* %50, %struct.vport** %2, align 8
  br label %92

51:                                               ; preds = %41
  %52 = load %struct.vport*, %struct.vport** %8, align 8
  %53 = bitcast %struct.vport* %52 to i8*
  %54 = call %struct.vxlan_port* @vxlan_vport(i8* %53)
  store %struct.vxlan_port* %54, %struct.vxlan_port** %6, align 8
  %55 = load %struct.vxlan_port*, %struct.vxlan_port** %6, align 8
  %56 = getelementptr inbounds %struct.vxlan_port, %struct.vxlan_port* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %59 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IFNAMSIZ, align 4
  %62 = call i32 @strncpy(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.net*, %struct.net** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @htons(i32 %64)
  %66 = load i32, i32* @vxlan_rcv, align 4
  %67 = load %struct.vport*, %struct.vport** %8, align 8
  %68 = bitcast %struct.vport* %67 to i8*
  %69 = call i8* @vxlan_sock_add(%struct.net* %63, i32 %65, i32 %66, i8* %68, i32 1)
  %70 = bitcast i8* %69 to %struct.vxlan_sock*
  store %struct.vxlan_sock* %70, %struct.vxlan_sock** %7, align 8
  %71 = load %struct.vxlan_sock*, %struct.vxlan_sock** %7, align 8
  %72 = bitcast %struct.vxlan_sock* %71 to i8*
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %51
  %76 = load %struct.vport*, %struct.vport** %8, align 8
  %77 = bitcast %struct.vport* %76 to i8*
  %78 = call i32 @ovs_vport_free(i8* %77)
  %79 = load %struct.vxlan_sock*, %struct.vxlan_sock** %7, align 8
  %80 = bitcast %struct.vxlan_sock* %79 to i8*
  %81 = bitcast i8* %80 to %struct.vport*
  store %struct.vport* %81, %struct.vport** %2, align 8
  br label %92

82:                                               ; preds = %51
  %83 = load %struct.vxlan_sock*, %struct.vxlan_sock** %7, align 8
  %84 = bitcast %struct.vxlan_sock* %83 to i8*
  %85 = load %struct.vxlan_port*, %struct.vxlan_port** %6, align 8
  %86 = getelementptr inbounds %struct.vxlan_port, %struct.vxlan_port* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.vport*, %struct.vport** %8, align 8
  store %struct.vport* %87, %struct.vport** %2, align 8
  br label %92

88:                                               ; preds = %38, %21
  %89 = load i32, i32* %11, align 4
  %90 = call i8* @ERR_PTR(i32 %89)
  %91 = bitcast i8* %90 to %struct.vport*
  store %struct.vport* %91, %struct.vport** %2, align 8
  br label %92

92:                                               ; preds = %88, %82, %75, %49
  %93 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %93
}

declare dso_local %struct.net* @ovs_dp_get_net(i32) #1

declare dso_local %struct.nlattr* @nla_find_nested(%struct.nlattr*, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i8* @ovs_vport_alloc(i32, i32*, %struct.vport_parms*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local %struct.vxlan_port* @vxlan_vport(i8*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i8* @vxlan_sock_add(%struct.net*, i32, i32, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ovs_vport_free(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
