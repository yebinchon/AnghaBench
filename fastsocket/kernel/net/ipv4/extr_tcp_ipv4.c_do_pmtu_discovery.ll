; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_do_pmtu_discovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_do_pmtu_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.iphdr = type { i32 }
%struct.dst_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dst_entry*, i64)* }
%struct.inet_sock = type { i64 }
%struct.TYPE_4__ = type { i64 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.iphdr*, i64)* @do_pmtu_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pmtu_discovery(%struct.sock* %0, %struct.iphdr* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.iphdr* %1, %struct.iphdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.inet_sock* @inet_sk(%struct.sock* %9)
  store %struct.inet_sock* %10, %struct.inet_sock** %8, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_LISTEN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %65

17:                                               ; preds = %3
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.dst_entry* @__sk_dst_check(%struct.sock* %18, i32 0)
  store %struct.dst_entry* %19, %struct.dst_entry** %7, align 8
  %20 = icmp eq %struct.dst_entry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %65

22:                                               ; preds = %17
  %23 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dst_entry*, i64)*, i32 (%struct.dst_entry*, i64)** %26, align 8
  %28 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 %27(%struct.dst_entry* %28, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %33 = call i64 @dst_mtu(%struct.dst_entry* %32)
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %38 = call i64 @ip_dont_fragment(%struct.sock* %36, %struct.dst_entry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %35, %22
  %45 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %46 = call i64 @dst_mtu(%struct.dst_entry* %45)
  store i64 %46, i64* %6, align 8
  %47 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %48 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IP_PMTUDISC_DONT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @tcp_sync_mss(%struct.sock* %60, i64 %61)
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = call i32 @tcp_simple_retransmit(%struct.sock* %63)
  br label %65

65:                                               ; preds = %16, %21, %59, %52, %44
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, %struct.dst_entry*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @tcp_simple_retransmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
