; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_update_tcp_ip_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_update_tcp_ip_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_desc = type { i32, i64, %struct.iphdr*, i32, i64, i32, i32, %struct.tcphdr* }
%struct.iphdr = type { i32, i32, i32, i64, i32 }
%struct.tcphdr = type { i64, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_lro_desc*)* @lro_update_tcp_ip_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lro_update_tcp_ip_header(%struct.net_lro_desc* %0) #0 {
  %2 = alloca %struct.net_lro_desc*, align 8
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.net_lro_desc* %0, %struct.net_lro_desc** %2, align 8
  %7 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %8 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %7, i32 0, i32 2
  %9 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  store %struct.iphdr* %9, %struct.iphdr** %3, align 8
  %10 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %11 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %10, i32 0, i32 7
  %12 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  store %struct.tcphdr* %12, %struct.tcphdr** %4, align 8
  %13 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %14 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %19 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %22 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %24 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i64 1
  %30 = bitcast %struct.tcphdr* %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %32 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %38 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @htons(i64 %39)
  %41 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %46 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %45, i32 0, i32 2
  %47 = load %struct.iphdr*, %struct.iphdr** %46, align 8
  %48 = bitcast %struct.iphdr* %47 to i32*
  %49 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ip_fast_csum(i32* %48, i32 %51)
  %53 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %56 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %58 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %59 = call i32 @TCP_HDR_LEN(%struct.tcphdr* %58)
  %60 = call i32 @csum_partial(%struct.tcphdr* %57, i32 %59, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %62 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @csum_add(i32 %63, i32 %64)
  %66 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %67 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %72 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %75 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %78 = call i64 @IP_HDR_LEN(%struct.iphdr* %77)
  %79 = sub nsw i64 %76, %78
  %80 = load i32, i32* @IPPROTO_TCP, align 4
  %81 = load %struct.net_lro_desc*, %struct.net_lro_desc** %2, align 8
  %82 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @csum_tcpudp_magic(i32 %70, i32 %73, i64 %79, i32 %80, i32 %83)
  %85 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %86 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  ret void
}

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @TCP_HDR_LEN(%struct.tcphdr*) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i64, i32, i32) #1

declare dso_local i64 @IP_HDR_LEN(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
