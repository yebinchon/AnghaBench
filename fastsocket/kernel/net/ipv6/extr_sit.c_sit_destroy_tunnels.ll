; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_sit_destroy_tunnels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sit.c_sit_destroy_tunnels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sit_net = type { %struct.ip_tunnel*** }
%struct.ip_tunnel = type { i32 }

@HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sit_net*)* @sit_destroy_tunnels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sit_destroy_tunnels(%struct.sit_net* %0) #0 {
  %2 = alloca %struct.sit_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_tunnel*, align 8
  store %struct.sit_net* %0, %struct.sit_net** %2, align 8
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HASH_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %28, %14
  %16 = load %struct.sit_net*, %struct.sit_net** %2, align 8
  %17 = getelementptr inbounds %struct.sit_net, %struct.sit_net* %16, i32 0, i32 0
  %18 = load %struct.ip_tunnel***, %struct.ip_tunnel**** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ip_tunnel**, %struct.ip_tunnel*** %18, i64 %20
  %22 = load %struct.ip_tunnel**, %struct.ip_tunnel*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ip_tunnel*, %struct.ip_tunnel** %22, i64 %24
  %26 = load %struct.ip_tunnel*, %struct.ip_tunnel** %25, align 8
  store %struct.ip_tunnel* %26, %struct.ip_tunnel** %5, align 8
  %27 = icmp ne %struct.ip_tunnel* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.ip_tunnel*, %struct.ip_tunnel** %5, align 8
  %30 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @unregister_netdevice(i32 %31)
  br label %15

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %10
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

declare dso_local i32 @unregister_netdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
