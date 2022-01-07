; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_sock_mc_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_sock_mc_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_mc_socklist* }
%struct.ipv6_mc_socklist = type { i32, i32, %struct.ipv6_mc_socklist* }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32 }

@ipv6_sk_mc_lock = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_sock_mc_drop(%struct.sock* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.ipv6_mc_socklist*, align 8
  %10 = alloca %struct.ipv6_mc_socklist**, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.inet6_dev*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %14)
  store %struct.ipv6_pinfo* %15, %struct.ipv6_pinfo** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = call i32 @write_lock_bh(i32* @ipv6_sk_mc_lock)
  %19 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %20 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %19, i32 0, i32 0
  store %struct.ipv6_mc_socklist** %20, %struct.ipv6_mc_socklist*** %10, align 8
  br label %21

21:                                               ; preds = %81, %3
  %22 = load %struct.ipv6_mc_socklist**, %struct.ipv6_mc_socklist*** %10, align 8
  %23 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %22, align 8
  store %struct.ipv6_mc_socklist* %23, %struct.ipv6_mc_socklist** %9, align 8
  %24 = icmp ne %struct.ipv6_mc_socklist* %23, null
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %30 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %28, %25
  %35 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %36 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %35, i32 0, i32 1
  %37 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %38 = call i64 @ipv6_addr_equal(i32* %36, %struct.in6_addr* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  %41 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %42 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %41, i32 0, i32 2
  %43 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %42, align 8
  %44 = load %struct.ipv6_mc_socklist**, %struct.ipv6_mc_socklist*** %10, align 8
  store %struct.ipv6_mc_socklist* %43, %struct.ipv6_mc_socklist** %44, align 8
  %45 = call i32 @write_unlock_bh(i32* @ipv6_sk_mc_lock)
  %46 = load %struct.net*, %struct.net** %11, align 8
  %47 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %48 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.net_device* @dev_get_by_index(%struct.net* %46, i32 %49)
  store %struct.net_device* %50, %struct.net_device** %12, align 8
  %51 = load %struct.net_device*, %struct.net_device** %12, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %40
  %54 = load %struct.net_device*, %struct.net_device** %12, align 8
  %55 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %54)
  store %struct.inet6_dev* %55, %struct.inet6_dev** %13, align 8
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %59 = call i32 @ip6_mc_leave_src(%struct.sock* %56, %struct.ipv6_mc_socklist* %57, %struct.inet6_dev* %58)
  %60 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %61 = icmp ne %struct.inet6_dev* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %64 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %65 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %64, i32 0, i32 1
  %66 = call i32 @__ipv6_dev_mc_dec(%struct.inet6_dev* %63, i32* %65)
  %67 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %68 = call i32 @in6_dev_put(%struct.inet6_dev* %67)
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.net_device*, %struct.net_device** %12, align 8
  %71 = call i32 @dev_put(%struct.net_device* %70)
  br label %76

72:                                               ; preds = %40
  %73 = load %struct.sock*, %struct.sock** %5, align 8
  %74 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %75 = call i32 @ip6_mc_leave_src(%struct.sock* %73, %struct.ipv6_mc_socklist* %74, %struct.inet6_dev* null)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %79 = call i32 @sock_kfree_s(%struct.sock* %77, %struct.ipv6_mc_socklist* %78, i32 16)
  store i32 0, i32* %4, align 4
  br label %88

80:                                               ; preds = %34, %28
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %83 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %82, i32 0, i32 2
  store %struct.ipv6_mc_socklist** %83, %struct.ipv6_mc_socklist*** %10, align 8
  br label %21

84:                                               ; preds = %21
  %85 = call i32 @write_unlock_bh(i32* @ipv6_sk_mc_lock)
  %86 = load i32, i32* @EADDRNOTAVAIL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @ip6_mc_leave_src(%struct.sock*, %struct.ipv6_mc_socklist*, %struct.inet6_dev*) #1

declare dso_local i32 @__ipv6_dev_mc_dec(%struct.inet6_dev*, i32*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_mc_socklist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
