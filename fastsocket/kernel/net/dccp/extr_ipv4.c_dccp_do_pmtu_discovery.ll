; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_do_pmtu_discovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_do_pmtu_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.iphdr = type { i32 }
%struct.dst_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dst_entry*, i64)* }
%struct.inet_sock = type { i64 }
%struct.dccp_sock = type { i32 }
%struct.TYPE_4__ = type { i64 }

@DCCP_LISTEN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i64 0, align 8
@DCCP_PKT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.iphdr*, i64)* @dccp_do_pmtu_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_do_pmtu_discovery(%struct.sock* %0, %struct.iphdr* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.iphdr* %1, %struct.iphdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %8, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %12)
  store %struct.dccp_sock* %13, %struct.dccp_sock** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DCCP_LISTEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.dst_entry* @__sk_dst_check(%struct.sock* %21, i32 0)
  store %struct.dst_entry* %22, %struct.dst_entry** %7, align 8
  %23 = icmp eq %struct.dst_entry* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %72

25:                                               ; preds = %20
  %26 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %27 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dst_entry*, i64)*, i32 (%struct.dst_entry*, i64)** %29, align 8
  %31 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 %30(%struct.dst_entry* %31, i64 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %36 = call i64 @dst_mtu(%struct.dst_entry* %35)
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %41 = call i64 @ip_dont_fragment(%struct.sock* %39, %struct.dst_entry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @EMSGSIZE, align 4
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %38, %25
  %48 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %49 = call i64 @dst_mtu(%struct.dst_entry* %48)
  store i64 %49, i64* %6, align 8
  %50 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IP_PMTUDISC_DONT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @dccp_sync_mss(%struct.sock* %63, i64 %64)
  %66 = load %struct.sock*, %struct.sock** %4, align 8
  %67 = load %struct.dccp_sock*, %struct.dccp_sock** %9, align 8
  %68 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DCCP_PKT_SYNC, align 4
  %71 = call i32 @dccp_send_sync(%struct.sock* %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %19, %24, %62, %55, %47
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, %struct.dst_entry*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i64) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
