; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-vxlan.c_vxlan_tnl_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-vxlan.c_vxlan_tnl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.net = type { i32 }
%struct.vxlan_port = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rtable = type { i32 }
%struct.flowi = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@TUNNEL_DONT_FRAGMENT = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vport*, %struct.sk_buff*)* @vxlan_tnl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_tnl_send(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vport*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.vxlan_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca %struct.flowi, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.vport*, %struct.vport** %3, align 8
  %16 = getelementptr inbounds %struct.vport, %struct.vport* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @ovs_dp_get_net(i32 %17)
  store %struct.net* %18, %struct.net** %5, align 8
  %19 = load %struct.vport*, %struct.vport** %3, align 8
  %20 = call %struct.vxlan_port* @vxlan_vport(%struct.vport* %19)
  store %struct.vxlan_port* %20, %struct.vxlan_port** %6, align 8
  %21 = load %struct.vxlan_port*, %struct.vxlan_port** %6, align 8
  %22 = getelementptr inbounds %struct.vxlan_port, %struct.vxlan_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_9__* @inet_sk(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %14, align 4
  br label %146

43:                                               ; preds = %2
  %44 = call i32 @memset(%struct.flowi* %9, i32 0, i32 20)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RT_TOS(i32 %64)
  %66 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @IPPROTO_UDP, align 4
  %72 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.net*, %struct.net** %5, align 8
  %74 = call i32 @ip_route_output_key(%struct.net* %73, %struct.rtable** %8, %struct.flowi* %9)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %43
  br label %146

78:                                               ; preds = %43
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TUNNEL_DONT_FRAGMENT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @IP_DF, align 4
  %90 = call i32 @htons(i32 %89)
  br label %92

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ %90, %88 ], [ 0, %91 ]
  store i32 %93, i32* %13, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = call i32 @inet_get_local_port_range(i32* %11, i32* %12)
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @vxlan_src_port(i32 %97, i32 %98, %struct.sk_buff* %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.net*, %struct.net** %5, align 8
  %102 = load %struct.vxlan_port*, %struct.vxlan_port** %6, align 8
  %103 = getelementptr inbounds %struct.vxlan_port, %struct.vxlan_port* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load %struct.rtable*, %struct.rtable** %8, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %115)
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call %struct.TYPE_10__* @OVS_CB(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @be64_to_cpu(i32 %135)
  %137 = shl i32 %136, 8
  %138 = call i32 @htonl(i32 %137)
  %139 = call i32 @vxlan_xmit_skb(%struct.net* %101, %struct.TYPE_8__* %104, %struct.rtable* %105, %struct.sk_buff* %106, i32 %108, i32 %114, i32 %120, i32 %126, i32 %127, i32 %128, i32 %129, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %92
  %143 = load %struct.rtable*, %struct.rtable** %8, align 8
  %144 = call i32 @ip_rt_put(%struct.rtable* %143)
  br label %145

145:                                              ; preds = %142, %92
  br label %146

146:                                              ; preds = %145, %77, %40
  %147 = load i32, i32* %14, align 4
  ret i32 %147
}

declare dso_local %struct.net* @ovs_dp_get_net(i32) #1

declare dso_local %struct.vxlan_port* @vxlan_vport(%struct.vport*) #1

declare dso_local %struct.TYPE_9__* @inet_sk(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_10__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @ip_route_output_key(%struct.net*, %struct.rtable**, %struct.flowi*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @inet_get_local_port_range(i32*, i32*) #1

declare dso_local i32 @vxlan_src_port(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @vxlan_xmit_skb(%struct.net*, %struct.TYPE_8__*, %struct.rtable*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
