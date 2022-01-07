; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_update_socket_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_update_socket_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_sock = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netlink_sock*, i32, i32)* @netlink_update_socket_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlink_update_socket_mc(%struct.netlink_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.netlink_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netlink_sock* %0, %struct.netlink_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub i32 %15, 1
  %17 = load %struct.netlink_sock*, %struct.netlink_sock** %4, align 8
  %18 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_bit(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.netlink_sock*, %struct.netlink_sock** %4, align 8
  %22 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = sub i32 %31, 1
  %33 = load %struct.netlink_sock*, %struct.netlink_sock** %4, align 8
  %34 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__set_bit(i32 %32, i32 %35)
  br label %44

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = sub i32 %38, 1
  %40 = load %struct.netlink_sock*, %struct.netlink_sock** %4, align 8
  %41 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__clear_bit(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.netlink_sock*, %struct.netlink_sock** %4, align 8
  %46 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @netlink_update_subscriptions(i32* %46, i32 %47)
  %49 = load %struct.netlink_sock*, %struct.netlink_sock** %4, align 8
  %50 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %49, i32 0, i32 1
  %51 = call i32 @netlink_update_listeners(i32* %50)
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @netlink_update_subscriptions(i32*, i32) #1

declare dso_local i32 @netlink_update_listeners(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
