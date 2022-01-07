; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }
%struct.in6_addr = type { i32 }
%struct.icmp6hdr = type { i32 }
%struct.flowi = type { i32 }
%struct.dst_entry = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.inet6_dev = type { i32 }

@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ndisc_send_skb(%struct.sk_buff* %0, %struct.net_device* %1, %struct.neighbour* %2, %struct.in6_addr* %3, %struct.in6_addr* %4, %struct.icmp6hdr* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.neighbour*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.icmp6hdr*, align 8
  %13 = alloca %struct.flowi, align 4
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca %struct.sock*, align 8
  %17 = alloca %struct.inet6_dev*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.neighbour* %2, %struct.neighbour** %9, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %10, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %11, align 8
  store %struct.icmp6hdr* %5, %struct.icmp6hdr** %12, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call %struct.net* @dev_net(%struct.net_device* %20)
  store %struct.net* %21, %struct.net** %15, align 8
  %22 = load %struct.net*, %struct.net** %15, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %16, align 8
  %26 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %27 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %19, align 4
  %29 = load %struct.sock*, %struct.sock** %16, align 8
  %30 = load i32, i32* %19, align 4
  %31 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %32 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @icmpv6_flow_init(%struct.sock* %29, %struct.flowi* %13, i32 %30, %struct.in6_addr* %31, %struct.in6_addr* %32, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %40 = call %struct.dst_entry* @icmp6_dst_alloc(%struct.net_device* %37, %struct.neighbour* %38, %struct.in6_addr* %39)
  store %struct.dst_entry* %40, %struct.dst_entry** %14, align 8
  %41 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %42 = icmp ne %struct.dst_entry* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %6
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  br label %97

46:                                               ; preds = %6
  %47 = load %struct.net*, %struct.net** %15, align 8
  %48 = call i32 @xfrm_lookup(%struct.net* %47, %struct.dst_entry** %14, %struct.flowi* %13, i32* null, i32 0)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %97

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %57 = call i32 @skb_dst_set(%struct.sk_buff* %55, %struct.dst_entry* %56)
  %58 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %59 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.inet6_dev* @in6_dev_get(i32 %60)
  store %struct.inet6_dev* %61, %struct.inet6_dev** %17, align 8
  %62 = load %struct.net*, %struct.net** %15, align 8
  %63 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %64 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IP6_UPD_PO_STATS(%struct.net* %62, %struct.inet6_dev* %63, i32 %64, i32 %67)
  %69 = load i32, i32* @PF_INET6, align 4
  %70 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %73 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @dst_output, align 4
  %76 = call i32 @NF_HOOK(i32 %69, i32 %70, %struct.sk_buff* %71, i32* null, i32 %74, i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %54
  %80 = load %struct.net*, %struct.net** %15, align 8
  %81 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @ICMP6MSGOUT_INC_STATS(%struct.net* %80, %struct.inet6_dev* %81, i32 %82)
  %84 = load %struct.net*, %struct.net** %15, align 8
  %85 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %86 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %87 = call i32 @ICMP6_INC_STATS(%struct.net* %84, %struct.inet6_dev* %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %54
  %89 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %90 = icmp ne %struct.inet6_dev* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i64 @likely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.inet6_dev*, %struct.inet6_dev** %17, align 8
  %96 = call i32 @in6_dev_put(%struct.inet6_dev* %95)
  br label %97

97:                                               ; preds = %43, %51, %94, %88
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @icmpv6_flow_init(%struct.sock*, %struct.flowi*, i32, %struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.net_device*, %struct.neighbour*, %struct.in6_addr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, i32*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(i32) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
