; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_drop_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_drop_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_sock = type { %struct.ip_mc_socklist* }
%struct.ip_mc_socklist = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.in_device = type { i32 }

@ip_mc_socklist_reclaim = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_drop_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  %4 = alloca %struct.ip_mc_socklist*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.in_device*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_sock* @inet_sk(%struct.sock* %7)
  store %struct.inet_sock* %8, %struct.inet_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.net* @sock_net(%struct.sock* %9)
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %12 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %11, i32 0, i32 0
  %13 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %12, align 8
  %14 = icmp eq %struct.ip_mc_socklist* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = call i32 (...) @rtnl_lock()
  br label %18

18:                                               ; preds = %53, %16
  %19 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %20 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %19, i32 0, i32 0
  %21 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %20, align 8
  store %struct.ip_mc_socklist* %21, %struct.ip_mc_socklist** %4, align 8
  %22 = icmp ne %struct.ip_mc_socklist* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %25 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %24, i32 0, i32 0
  %26 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %25, align 8
  %27 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %28 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rcu_assign_pointer(%struct.ip_mc_socklist* %26, i32 %29)
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %33 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.in_device* @inetdev_by_index(%struct.net* %31, i32 %35)
  store %struct.in_device* %36, %struct.in_device** %6, align 8
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %39 = load %struct.in_device*, %struct.in_device** %6, align 8
  %40 = call i32 @ip_mc_leave_src(%struct.sock* %37, %struct.ip_mc_socklist* %38, %struct.in_device* %39)
  %41 = load %struct.in_device*, %struct.in_device** %6, align 8
  %42 = icmp ne %struct.in_device* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %23
  %44 = load %struct.in_device*, %struct.in_device** %6, align 8
  %45 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %46 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ip_mc_dec_group(%struct.in_device* %44, i32 %49)
  %51 = load %struct.in_device*, %struct.in_device** %6, align 8
  %52 = call i32 @in_dev_put(%struct.in_device* %51)
  br label %53

53:                                               ; preds = %43, %23
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = call i32 @atomic_sub(i32 16, i32* %55)
  %57 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %58 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %57, i32 0, i32 0
  %59 = load i32, i32* @ip_mc_socklist_reclaim, align 4
  %60 = call i32 @call_rcu(i32* %58, i32 %59)
  br label %18

61:                                               ; preds = %18
  %62 = call i32 (...) @rtnl_unlock()
  br label %63

63:                                               ; preds = %61, %15
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ip_mc_socklist*, i32) #1

declare dso_local %struct.in_device* @inetdev_by_index(%struct.net*, i32) #1

declare dso_local i32 @ip_mc_leave_src(%struct.sock*, %struct.ip_mc_socklist*, %struct.in_device*) #1

declare dso_local i32 @ip_mc_dec_group(%struct.in_device*, i32) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
