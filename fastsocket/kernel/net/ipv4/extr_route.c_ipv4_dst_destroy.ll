; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ipv4_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ipv4_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.rtable = type { %struct.in_device*, %struct.inet_peer* }
%struct.in_device = type { i32 }
%struct.inet_peer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*)* @ipv4_dst_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv4_dst_destroy(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.rtable*, align 8
  %4 = alloca %struct.inet_peer*, align 8
  %5 = alloca %struct.in_device*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %6 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %7 = bitcast %struct.dst_entry* %6 to %struct.rtable*
  store %struct.rtable* %7, %struct.rtable** %3, align 8
  %8 = load %struct.rtable*, %struct.rtable** %3, align 8
  %9 = getelementptr inbounds %struct.rtable, %struct.rtable* %8, i32 0, i32 1
  %10 = load %struct.inet_peer*, %struct.inet_peer** %9, align 8
  store %struct.inet_peer* %10, %struct.inet_peer** %4, align 8
  %11 = load %struct.rtable*, %struct.rtable** %3, align 8
  %12 = getelementptr inbounds %struct.rtable, %struct.rtable* %11, i32 0, i32 0
  %13 = load %struct.in_device*, %struct.in_device** %12, align 8
  store %struct.in_device* %13, %struct.in_device** %5, align 8
  %14 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %15 = icmp ne %struct.inet_peer* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.rtable*, %struct.rtable** %3, align 8
  %18 = getelementptr inbounds %struct.rtable, %struct.rtable* %17, i32 0, i32 1
  store %struct.inet_peer* null, %struct.inet_peer** %18, align 8
  %19 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %20 = call i32 @inet_putpeer(%struct.inet_peer* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.in_device*, %struct.in_device** %5, align 8
  %23 = icmp ne %struct.in_device* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.rtable*, %struct.rtable** %3, align 8
  %26 = getelementptr inbounds %struct.rtable, %struct.rtable* %25, i32 0, i32 0
  store %struct.in_device* null, %struct.in_device** %26, align 8
  %27 = load %struct.in_device*, %struct.in_device** %5, align 8
  %28 = call i32 @in_dev_put(%struct.in_device* %27)
  br label %29

29:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
