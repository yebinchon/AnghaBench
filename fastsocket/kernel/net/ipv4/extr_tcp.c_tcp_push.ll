; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32 }

@MSG_MORE = common dso_local global i32 0, align 4
@TCP_NAGLE_CORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32, i32)* @tcp_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_push(%struct.sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %9, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i64 @tcp_send_head(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %4
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MSG_MORE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %25 = call i64 @forced_push(%struct.tcp_sock* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %16
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = call i32 @tcp_mark_push(%struct.tcp_sock* %28, %struct.sk_buff* %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = call i32 @tcp_mark_urg(%struct.tcp_sock* %32, i32 %33, %struct.sk_buff* %34)
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MSG_MORE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @TCP_NAGLE_CORK, align 4
  br label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @__tcp_push_pending_frames(%struct.sock* %36, i32 %37, i32 %47)
  br label %49

49:                                               ; preds = %46, %4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_send_head(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local i64 @forced_push(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_mark_push(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_mark_urg(%struct.tcp_sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__tcp_push_pending_frames(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
