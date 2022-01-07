; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_process_direct_tcp_rps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_process_direct_tcp_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sock*, %struct.TYPE_2__*, i64 }
%struct.sock = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@tcp_hashinfo = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@SOCK_DIRECT_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @process_direct_tcp_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_direct_tcp_rps(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iphdr*
  store %struct.iphdr* %10, %struct.iphdr** %3, align 8
  %11 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %12 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @pskb_may_pull(%struct.sk_buff* %14, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %95

22:                                               ; preds = %1
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = inttoptr i64 %29 to %struct.tcphdr*
  store %struct.tcphdr* %30, %struct.tcphdr** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load %struct.sock*, %struct.sock** %32, align 8
  %34 = icmp ne %struct.sock* %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %22
  %36 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %46 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.sock* @__inet_lookup(i32* @init_net, i32* @tcp_hashinfo, i32 %38, i32 %41, i32 %44, i32 %47, i32 %52)
  store %struct.sock* %53, %struct.sock** %5, align 8
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store %struct.sock* %54, %struct.sock** %56, align 8
  br label %61

57:                                               ; preds = %22
  %58 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load %struct.sock*, %struct.sock** %59, align 8
  store %struct.sock* %60, %struct.sock** %5, align 8
  br label %61

61:                                               ; preds = %57, %35
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = call i64 @likely(%struct.sock* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TCP_TIME_WAIT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = load i32, i32* @SOCK_DIRECT_TCP, align 4
  %74 = call i64 @sock_flag(%struct.sock* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @skb_dst_set(%struct.sk_buff* %82, i64 %85)
  %87 = load %struct.sock*, %struct.sock** %5, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %81, %76
  br label %93

93:                                               ; preds = %92, %71, %65
  br label %94

94:                                               ; preds = %93, %61
  br label %95

95:                                               ; preds = %94, %1
  ret i32 -1
}

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @__inet_lookup(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @likely(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
