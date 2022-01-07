; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_enable_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_enable_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i64, i32, %struct.vhost_virtqueue* }
%struct.vhost_virtqueue = type { %struct.socket* }
%struct.socket = type { i32 }

@VHOST_NET_VQ_TX = common dso_local global i32 0, align 4
@VHOST_NET_POLL_STOPPED = common dso_local global i32 0, align 4
@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.vhost_virtqueue*)* @vhost_net_enable_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_enable_vq(%struct.vhost_net* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca %struct.vhost_net*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %3, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %4, align 8
  %6 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %7 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %6, i32 0, i32 0
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = icmp ne %struct.socket* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %14 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %15 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %14, i32 0, i32 2
  %16 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %17 = load i32, i32* @VHOST_NET_VQ_TX, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %16, i64 %18
  %20 = icmp eq %struct.vhost_virtqueue* %13, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load i32, i32* @VHOST_NET_POLL_STOPPED, align 4
  %23 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %24 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = call i32 @tx_poll_start(%struct.vhost_net* %25, %struct.socket* %26)
  br label %38

28:                                               ; preds = %12
  %29 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %30 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vhost_poll_start(i64 %33, i32 %36)
  br label %38

38:                                               ; preds = %11, %28, %21
  ret void
}

declare dso_local i32 @tx_poll_start(%struct.vhost_net*, %struct.socket*) #1

declare dso_local i32 @vhost_poll_start(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
