; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_sock_ac_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_sock_ac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_ac_socklist* }
%struct.ipv6_ac_socklist = type { i32, i32, %struct.ipv6_ac_socklist* }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

@ipv6_sk_ac_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_sock_ac_close(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ipv6_pinfo*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipv6_ac_socklist*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipv6_ac_socklist*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %9)
  store %struct.ipv6_pinfo* %10, %struct.ipv6_pinfo** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = call i32 @write_lock_bh(i32* @ipv6_sk_ac_lock)
  %14 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %15 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %14, i32 0, i32 0
  %16 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %15, align 8
  store %struct.ipv6_ac_socklist* %16, %struct.ipv6_ac_socklist** %5, align 8
  %17 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %18 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %17, i32 0, i32 0
  store %struct.ipv6_ac_socklist* null, %struct.ipv6_ac_socklist** %18, align 8
  %19 = call i32 @write_unlock_bh(i32* @ipv6_sk_ac_lock)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %55, %1
  %21 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %22 = icmp ne %struct.ipv6_ac_socklist* %21, null
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %25 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %24, i32 0, i32 2
  %26 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %25, align 8
  store %struct.ipv6_ac_socklist* %26, %struct.ipv6_ac_socklist** %8, align 8
  %27 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %28 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @dev_put(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %41 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.net_device* @dev_get_by_index(%struct.net* %39, i32 %42)
  store %struct.net_device* %43, %struct.net_device** %4, align 8
  %44 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %45 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %38, %23
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %53 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %52, i32 0, i32 1
  %54 = call i32 @ipv6_dev_ac_dec(%struct.net_device* %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %58 = call i32 @sock_kfree_s(%struct.sock* %56, %struct.ipv6_ac_socklist* %57, i32 16)
  %59 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %8, align 8
  store %struct.ipv6_ac_socklist* %59, %struct.ipv6_ac_socklist** %5, align 8
  br label %20

60:                                               ; preds = %20
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = icmp ne %struct.net_device* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 @dev_put(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %63, %60
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @ipv6_dev_ac_dec(%struct.net_device*, i32*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_ac_socklist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
