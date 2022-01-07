; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_bind_peer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_bind_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { %struct.inet_peer*, i32 }
%struct.inet_peer = type { i32 }

@rt_bind_peer.rt_peer_lock = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_bind_peer(%struct.rtable* %0, i32 %1) #0 {
  %3 = alloca %struct.rtable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_peer*, align 8
  store %struct.rtable* %0, %struct.rtable** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtable*, %struct.rtable** %3, align 8
  %7 = getelementptr inbounds %struct.rtable, %struct.rtable* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.inet_peer* @inet_getpeer(i32 %8, i32 %9)
  store %struct.inet_peer* %10, %struct.inet_peer** %5, align 8
  %11 = call i32 @spin_lock_bh(i32* @rt_bind_peer.rt_peer_lock)
  %12 = load %struct.rtable*, %struct.rtable** %3, align 8
  %13 = getelementptr inbounds %struct.rtable, %struct.rtable* %12, i32 0, i32 0
  %14 = load %struct.inet_peer*, %struct.inet_peer** %13, align 8
  %15 = icmp eq %struct.inet_peer* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.inet_peer*, %struct.inet_peer** %5, align 8
  %18 = load %struct.rtable*, %struct.rtable** %3, align 8
  %19 = getelementptr inbounds %struct.rtable, %struct.rtable* %18, i32 0, i32 0
  store %struct.inet_peer* %17, %struct.inet_peer** %19, align 8
  store %struct.inet_peer* null, %struct.inet_peer** %5, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = call i32 @spin_unlock_bh(i32* @rt_bind_peer.rt_peer_lock)
  %22 = load %struct.inet_peer*, %struct.inet_peer** %5, align 8
  %23 = icmp ne %struct.inet_peer* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.inet_peer*, %struct.inet_peer** %5, align 8
  %26 = call i32 @inet_putpeer(%struct.inet_peer* %25)
  br label %27

27:                                               ; preds = %24, %20
  ret void
}

declare dso_local %struct.inet_peer* @inet_getpeer(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
