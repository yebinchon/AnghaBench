; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_retransmit_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_timer.c_dccp_retransmit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i64, i32, i32 }

@DCCP_MIB_TIMEOUTS = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@TCP_RESOURCE_PROBE_INTERVAL = common dso_local global i32 0, align 4
@DCCP_RTO_MAX = common dso_local global i32 0, align 4
@sysctl_dccp_retries1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dccp_retransmit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_retransmit_timer(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %4)
  store %struct.inet_connection_sock* %5, %struct.inet_connection_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i64 @dccp_write_timeout(%struct.sock* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %70

10:                                               ; preds = %1
  %11 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %12 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @DCCP_MIB_TIMEOUTS, align 4
  %17 = call i32 @DCCP_INC_STATS_BH(i32 %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i64 @dccp_retransmit_skb(%struct.sock* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %24 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %30 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %29, i32 0, i32 0
  store i64 1, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %34 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %35 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TCP_RESOURCE_PROBE_INTERVAL, align 4
  %38 = call i32 @min(i32 %36, i32 %37)
  %39 = load i32, i32* @DCCP_RTO_MAX, align 4
  %40 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %32, i32 %33, i32 %38, i32 %39)
  br label %70

41:                                               ; preds = %18
  %42 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %43 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %47 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 1
  %50 = load i32, i32* @DCCP_RTO_MAX, align 4
  %51 = call i32 @min(i32 %49, i32 %50)
  %52 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %53 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %56 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %57 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DCCP_RTO_MAX, align 4
  %60 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %54, i32 %55, i32 %58, i32 %59)
  %61 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %62 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @sysctl_dccp_retries1, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %41
  %68 = load %struct.sock*, %struct.sock** %2, align 8
  %69 = call i32 @__sk_dst_reset(%struct.sock* %68)
  br label %70

70:                                               ; preds = %9, %31, %67, %41
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dccp_write_timeout(%struct.sock*) #1

declare dso_local i32 @DCCP_INC_STATS_BH(i32) #1

declare dso_local i64 @dccp_retransmit_skb(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__sk_dst_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
