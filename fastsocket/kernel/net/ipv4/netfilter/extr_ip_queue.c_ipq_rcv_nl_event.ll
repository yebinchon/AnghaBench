; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c_ipq_rcv_nl_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c_ipq_rcv_nl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.netlink_notify = type { i64, i64, i32* }

@NETLINK_URELEASE = common dso_local global i64 0, align 8
@NETLINK_FIREWALL = common dso_local global i64 0, align 8
@queue_lock = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@peer_pid = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ipq_rcv_nl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipq_rcv_nl_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netlink_notify*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.netlink_notify*
  store %struct.netlink_notify* %9, %struct.netlink_notify** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @NETLINK_URELEASE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.netlink_notify*, %struct.netlink_notify** %7, align 8
  %15 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NETLINK_FIREWALL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.netlink_notify*, %struct.netlink_notify** %7, align 8
  %21 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = call i32 @write_lock_bh(i32* @queue_lock)
  %26 = load %struct.netlink_notify*, %struct.netlink_notify** %7, align 8
  %27 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, @init_net
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.netlink_notify*, %struct.netlink_notify** %7, align 8
  %32 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @peer_pid, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @__ipq_reset()
  br label %38

38:                                               ; preds = %36, %30, %24
  %39 = call i32 @write_unlock_bh(i32* @queue_lock)
  br label %40

40:                                               ; preds = %38, %19, %13, %3
  %41 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %41
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__ipq_reset(...) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
