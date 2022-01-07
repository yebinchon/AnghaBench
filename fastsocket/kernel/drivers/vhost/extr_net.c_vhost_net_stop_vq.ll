; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_stop_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_stop_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.vhost_net = type { i32 }
%struct.vhost_virtqueue = type { i32, %struct.socket* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.vhost_net*, %struct.vhost_virtqueue*)* @vhost_net_stop_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @vhost_net_stop_vq(%struct.vhost_net* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca %struct.vhost_net*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %3, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %4, align 8
  %6 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %7 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %10 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %9, i32 0, i32 1
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %5, align 8
  %12 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %13 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %14 = call i32 @vhost_net_disable_vq(%struct.vhost_net* %12, %struct.vhost_virtqueue* %13)
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %16 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %15, i32 0, i32 1
  %17 = load %struct.socket*, %struct.socket** %16, align 8
  %18 = call i32 @rcu_assign_pointer(%struct.socket* %17, i32* null)
  %19 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %20 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  ret %struct.socket* %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_net_disable_vq(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.socket*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
