; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_fwd_proxy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_fwd_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_device*, %struct.net_device*, %struct.rtable*)* @arp_fwd_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_fwd_proxy(%struct.in_device* %0, %struct.net_device* %1, %struct.rtable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.in_device* %0, %struct.in_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.rtable* %2, %struct.rtable** %7, align 8
  store i32 -1, i32* %10, align 4
  %11 = load %struct.rtable*, %struct.rtable** %7, align 8
  %12 = getelementptr inbounds %struct.rtable, %struct.rtable* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = icmp eq %struct.net_device* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.in_device*, %struct.in_device** %5, align 8
  %21 = call i32 @IN_DEV_PROXY_ARP(%struct.in_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %56

24:                                               ; preds = %19
  %25 = load %struct.in_device*, %struct.in_device** %5, align 8
  %26 = call i32 @IN_DEV_MEDIUM_ID(%struct.in_device* %25)
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %56

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %56

33:                                               ; preds = %29
  %34 = load %struct.rtable*, %struct.rtable** %7, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  %39 = call %struct.in_device* @in_dev_get(%struct.net_device* %38)
  store %struct.in_device* %39, %struct.in_device** %8, align 8
  %40 = icmp ne %struct.in_device* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.in_device*, %struct.in_device** %8, align 8
  %43 = call i32 @IN_DEV_MEDIUM_ID(%struct.in_device* %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.in_device*, %struct.in_device** %8, align 8
  %45 = call i32 @in_dev_put(%struct.in_device* %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, -1
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i1 [ false, %46 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %32, %28, %23, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @IN_DEV_PROXY_ARP(%struct.in_device*) #1

declare dso_local i32 @IN_DEV_MEDIUM_ID(%struct.in_device*) #1

declare dso_local %struct.in_device* @in_dev_get(%struct.net_device*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
