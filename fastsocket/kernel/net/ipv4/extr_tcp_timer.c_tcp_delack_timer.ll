; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_delack_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_delack_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.tcp_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.inet_connection_sock = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }
%struct.sk_buff = type { i32 }

@LINUX_MIB_DELAYEDACKLOCKED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCP_DELACK_MIN = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@ICSK_ACK_TIMER = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSCHEDULERFAILED = common dso_local global i32 0, align 4
@TCP_ATO_MIN = common dso_local global i32 0, align 4
@LINUX_MIB_DELAYEDACKS = common dso_local global i32 0, align 4
@tcp_memory_pressure = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tcp_delack_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_delack_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.sock*
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @bh_lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i64 @sock_owned_by_user(%struct.sock* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %20 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @sock_net(%struct.sock* %22)
  %24 = load i32, i32* @LINUX_MIB_DELAYEDACKLOCKED, align 4
  %25 = call i32 @NET_INC_STATS_BH(i32 %23, i32 %24)
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %27, i32 0, i32 2
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @TCP_DELACK_MIN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @sk_reset_timer(%struct.sock* %26, i32* %28, i64 %31)
  br label %147

33:                                               ; preds = %1
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @sk_mem_reclaim_partial(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TCP_CLOSE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %43 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41, %33
  br label %140

50:                                               ; preds = %41
  %51 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %52 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @jiffies, align 8
  %56 = call i64 @time_after(i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %61 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %60, i32 0, i32 2
  %62 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %63 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @sk_reset_timer(%struct.sock* %59, i32* %61, i64 %65)
  br label %140

67:                                               ; preds = %50
  %68 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %71 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = call i32 @skb_queue_empty(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %67
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 @sock_net(%struct.sock* %81)
  %83 = load i32, i32* @LINUX_MIB_TCPSCHEDULERFAILED, align 4
  %84 = call i32 @NET_INC_STATS_BH(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %91, %80
  %86 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = call %struct.sk_buff* @__skb_dequeue(i32* %88)
  store %struct.sk_buff* %89, %struct.sk_buff** %6, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @sk_backlog_rcv(%struct.sock* %92, %struct.sk_buff* %93)
  br label %85

95:                                               ; preds = %85
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %97 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %67
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = call i64 @inet_csk_ack_scheduled(%struct.sock* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %99
  %104 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %105 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %103
  %110 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %111 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %113, 1
  %115 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %116 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @min(i32 %114, i32 %117)
  %119 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %120 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  br label %130

122:                                              ; preds = %103
  %123 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %124 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @TCP_ATO_MIN, align 4
  %127 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %128 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 8
  br label %130

130:                                              ; preds = %122, %109
  %131 = load %struct.sock*, %struct.sock** %3, align 8
  %132 = call i32 @tcp_send_ack(%struct.sock* %131)
  %133 = load %struct.sock*, %struct.sock** %3, align 8
  %134 = call i32 @sock_net(%struct.sock* %133)
  %135 = load i32, i32* @LINUX_MIB_DELAYEDACKS, align 4
  %136 = call i32 @NET_INC_STATS_BH(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %99
  %138 = load %struct.sock*, %struct.sock** %3, align 8
  %139 = call i32 @TCP_CHECK_TIMER(%struct.sock* %138)
  br label %140

140:                                              ; preds = %137, %58, %49
  %141 = load i64, i64* @tcp_memory_pressure, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.sock*, %struct.sock** %3, align 8
  %145 = call i32 @sk_mem_reclaim(%struct.sock* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %18
  %148 = load %struct.sock*, %struct.sock** %3, align 8
  %149 = call i32 @bh_unlock_sock(%struct.sock* %148)
  %150 = load %struct.sock*, %struct.sock** %3, align 8
  %151 = call i32 @sock_put(%struct.sock* %150)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i32 @sk_mem_reclaim_partial(%struct.sock*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @sk_backlog_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @inet_csk_ack_scheduled(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tcp_send_ack(%struct.sock*) #1

declare dso_local i32 @TCP_CHECK_TIMER(%struct.sock*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
