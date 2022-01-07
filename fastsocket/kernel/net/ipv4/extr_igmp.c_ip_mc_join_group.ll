; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_join_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_join_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ip_mreqn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ip_mc_socklist = type { i32, i32*, %struct.ip_mc_socklist*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.in_device = type { i32 }
%struct.inet_sock = type { %struct.ip_mc_socklist* }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@sysctl_igmp_max_memberships = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mc_join_group(%struct.sock* %0, %struct.ip_mreqn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.ip_mreqn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ip_mc_socklist*, align 8
  %9 = alloca %struct.ip_mc_socklist*, align 8
  %10 = alloca %struct.in_device*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.ip_mreqn* %1, %struct.ip_mreqn** %5, align 8
  %15 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %16 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  store %struct.ip_mc_socklist* null, %struct.ip_mc_socklist** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.inet_sock* @inet_sk(%struct.sock* %19)
  store %struct.inet_sock* %20, %struct.inet_sock** %11, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.net* @sock_net(%struct.sock* %21)
  store %struct.net* %22, %struct.net** %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @ipv4_is_multicast(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %2
  %30 = call i32 (...) @rtnl_lock()
  %31 = load %struct.net*, %struct.net** %12, align 8
  %32 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %33 = call %struct.in_device* @ip_mc_find_dev(%struct.net* %31, %struct.ip_mreqn* %32)
  store %struct.in_device* %33, %struct.in_device** %10, align 8
  %34 = load %struct.in_device*, %struct.in_device** %10, align 8
  %35 = icmp ne %struct.in_device* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  store %struct.ip_mc_socklist* null, %struct.ip_mc_socklist** %8, align 8
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %111

39:                                               ; preds = %29
  %40 = load i32, i32* @EADDRINUSE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %43 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 0
  %47 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %46, align 8
  store %struct.ip_mc_socklist* %47, %struct.ip_mc_socklist** %9, align 8
  br label %48

48:                                               ; preds = %70, %39
  %49 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %9, align 8
  %50 = icmp ne %struct.ip_mc_socklist* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %9, align 8
  %53 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %9, align 8
  %61 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %111

67:                                               ; preds = %59, %51
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %9, align 8
  %72 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %71, i32 0, i32 2
  %73 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %72, align 8
  store %struct.ip_mc_socklist* %73, %struct.ip_mc_socklist** %9, align 8
  br label %48

74:                                               ; preds = %48
  %75 = load i32, i32* @ENOBUFS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @sysctl_igmp_max_memberships, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %111

81:                                               ; preds = %74
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.ip_mc_socklist* @sock_kmalloc(%struct.sock* %82, i32 40, i32 %83)
  store %struct.ip_mc_socklist* %84, %struct.ip_mc_socklist** %8, align 8
  %85 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %8, align 8
  %86 = icmp eq %struct.ip_mc_socklist* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %111

88:                                               ; preds = %81
  %89 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %8, align 8
  %90 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %89, i32 0, i32 3
  %91 = load %struct.ip_mreqn*, %struct.ip_mreqn** %5, align 8
  %92 = call i32 @memcpy(%struct.TYPE_6__* %90, %struct.ip_mreqn* %91, i32 16)
  %93 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %94 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %93, i32 0, i32 0
  %95 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %94, align 8
  %96 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %8, align 8
  %97 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %96, i32 0, i32 2
  store %struct.ip_mc_socklist* %95, %struct.ip_mc_socklist** %97, align 8
  %98 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %8, align 8
  %99 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* @MCAST_EXCLUDE, align 4
  %101 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %8, align 8
  %102 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %104 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %103, i32 0, i32 0
  %105 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %104, align 8
  %106 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %8, align 8
  %107 = call i32 @rcu_assign_pointer(%struct.ip_mc_socklist* %105, %struct.ip_mc_socklist* %106)
  %108 = load %struct.in_device*, %struct.in_device** %10, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @ip_mc_inc_group(%struct.in_device* %108, i64 %109)
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %88, %87, %80, %66, %36
  %112 = call i32 (...) @rtnl_unlock()
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %26
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv4_is_multicast(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.in_device* @ip_mc_find_dev(%struct.net*, %struct.ip_mreqn*) #1

declare dso_local %struct.ip_mc_socklist* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.ip_mreqn*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ip_mc_socklist*, %struct.ip_mc_socklist*) #1

declare dso_local i32 @ip_mc_inc_group(%struct.in_device*, i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
