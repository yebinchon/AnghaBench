; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_tx_poll_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_tx_poll_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i64, i64 }
%struct.socket = type { i32 }

@VHOST_NET_POLL_STOPPED = common dso_local global i64 0, align 8
@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@VHOST_NET_POLL_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.socket*)* @tx_poll_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_poll_start(%struct.vhost_net* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.vhost_net*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %5 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %6 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VHOST_NET_POLL_STOPPED, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %16 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vhost_poll_start(i64 %19, i32 %22)
  %24 = load i64, i64* @VHOST_NET_POLL_STARTED, align 8
  %25 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %26 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vhost_poll_start(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
