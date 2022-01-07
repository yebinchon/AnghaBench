; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_isatap_chksrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_isatap_chksrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i64 }
%struct.ip_tunnel = type { i32 }
%struct.ip_tunnel_prl_entry = type { i32 }
%struct.in6_addr = type { i64* }
%struct.TYPE_2__ = type { %struct.in6_addr }

@ipip6_lock = common dso_local global i32 0, align 4
@PRL_DEFAULT = common dso_local global i32 0, align 4
@NDISC_NODETYPE_DEFAULT = common dso_local global i32 0, align 4
@NDISC_NODETYPE_NODEFAULT = common dso_local global i32 0, align 4
@NDISC_NODETYPE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.iphdr*, %struct.ip_tunnel*)* @isatap_chksrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isatap_chksrc(%struct.sk_buff* %0, %struct.iphdr* %1, %struct.ip_tunnel* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.ip_tunnel_prl_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.iphdr* %1, %struct.iphdr** %5, align 8
  store %struct.ip_tunnel* %2, %struct.ip_tunnel** %6, align 8
  store i32 1, i32* %8, align 4
  %10 = call i32 @read_lock(i32* @ipip6_lock)
  %11 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %12 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.ip_tunnel_prl_entry* @__ipip6_tunnel_locate_prl(%struct.ip_tunnel* %11, i64 %14)
  store %struct.ip_tunnel_prl_entry* %15, %struct.ip_tunnel_prl_entry** %7, align 8
  %16 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %7, align 8
  %17 = icmp ne %struct.ip_tunnel_prl_entry* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load %struct.ip_tunnel_prl_entry*, %struct.ip_tunnel_prl_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel_prl_entry, %struct.ip_tunnel_prl_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PRL_DEFAULT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @NDISC_NODETYPE_DEFAULT, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @NDISC_NODETYPE_NODEFAULT, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %64

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.in6_addr* %37, %struct.in6_addr** %9, align 8
  %38 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %39 = call i64 @ipv6_addr_is_isatap(%struct.in6_addr* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %43 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %53 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %54 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ipv6_chk_prefix(%struct.in6_addr* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @NDISC_NODETYPE_HOST, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %63

62:                                               ; preds = %51, %41, %34
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %58
  br label %64

64:                                               ; preds = %63, %33
  %65 = call i32 @read_unlock(i32* @ipip6_lock)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ip_tunnel_prl_entry* @__ipip6_tunnel_locate_prl(%struct.ip_tunnel*, i64) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_addr_is_isatap(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_chk_prefix(%struct.in6_addr*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
