; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_reqsk_send_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_reqsk_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@IP_REPLY_ARG_NOSRCCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)* @tcp_v4_reqsk_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v4_reqsk_send_ack(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.request_sock* %2, %struct.request_sock** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %9 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %14 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %19 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %22 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tcp_v4_md5_do_lookup(%struct.sock* %24, i32 %28)
  %30 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %31 = call %struct.TYPE_6__* @inet_rsk(%struct.request_sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @IP_REPLY_ARG_NOSRCCHECK, align 4
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = call i32 @tcp_v4_send_ack(%struct.sk_buff* %7, i64 %12, i64 %17, i32 %20, i32 %23, i32 0, i32 %29, i32 %39)
  ret void
}

declare dso_local i32 @tcp_v4_send_ack(%struct.sk_buff*, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @tcp_v4_md5_do_lookup(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @inet_rsk(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
