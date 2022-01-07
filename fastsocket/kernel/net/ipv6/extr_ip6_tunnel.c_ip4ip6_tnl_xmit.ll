; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_tnl_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_tnl_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.iphdr = type { i64 }
%struct.flowi = type { i32, i64 }

@IPPROTO_IPIP = common dso_local global i64 0, align 8
@IP6_TNL_F_IGN_ENCAP_LIMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_TCLASS = common dso_local global i32 0, align 4
@IPV6_TCLASS_SHIFT = common dso_local global i32 0, align 4
@IPV6_TCLASS_MASK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ip4ip6_tnl_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip4ip6_tnl_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip6_tnl*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %13)
  store %struct.ip6_tnl* %14, %struct.ip6_tnl** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %15)
  store %struct.iphdr* %16, %struct.iphdr** %7, align 8
  store i32 -1, i32* %8, align 4
  %17 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %18 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_IPIP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %25 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %31 = call i32 @ip6_tnl_xmit_ctl(%struct.ip6_tnl* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %23
  store i32 -1, i32* %3, align 4
  br label %97

34:                                               ; preds = %29
  %35 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %36 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IP6_TNL_F_IGN_ENCAP_LIMIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %44 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %34
  %48 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %49 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %48, i32 0, i32 1
  %50 = call i32 @memcpy(%struct.flowi* %9, i32* %49, i32 16)
  %51 = load i64, i64* @IPPROTO_IPIP, align 8
  %52 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %54 = call i32 @ipv4_get_dsfield(%struct.iphdr* %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %56 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IP6_TNL_F_USE_ORIG_TCLASS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %47
  %63 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @IPV6_TCLASS_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = call i32 @htonl(i32 %68)
  %70 = load i32, i32* @IPV6_TCLASS_MASK, align 4
  %71 = and i32 %69, %70
  %72 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %62, %47
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ip6_tnl_xmit2(%struct.sk_buff* %76, %struct.net_device* %77, i32 %78, %struct.flowi* %9, i32 %79, i32* %11)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %91 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @htonl(i32 %92)
  %94 = call i32 @icmp_send(%struct.sk_buff* %89, i32 %90, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %88, %83
  store i32 -1, i32* %3, align 4
  br label %97

96:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %95, %33
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_tnl_xmit_ctl(%struct.ip6_tnl*) #1

declare dso_local i32 @memcpy(%struct.flowi*, i32*, i32) #1

declare dso_local i32 @ipv4_get_dsfield(%struct.iphdr*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip6_tnl_xmit2(%struct.sk_buff*, %struct.net_device*, i32, %struct.flowi*, i32, i32*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
