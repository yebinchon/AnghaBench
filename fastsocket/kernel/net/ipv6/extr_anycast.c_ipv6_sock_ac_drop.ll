; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_sock_ac_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_sock_ac_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_ac_socklist* }
%struct.ipv6_ac_socklist = type { i32, i32, %struct.ipv6_ac_socklist* }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

@ipv6_sk_ac_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_sock_ac_drop(%struct.sock* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ipv6_ac_socklist*, align 8
  %11 = alloca %struct.ipv6_ac_socklist*, align 8
  %12 = alloca %struct.net*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %13)
  store %struct.ipv6_pinfo* %14, %struct.ipv6_pinfo** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.net* @sock_net(%struct.sock* %15)
  store %struct.net* %16, %struct.net** %12, align 8
  %17 = call i32 @write_lock_bh(i32* @ipv6_sk_ac_lock)
  store %struct.ipv6_ac_socklist* null, %struct.ipv6_ac_socklist** %11, align 8
  %18 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %19 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %18, i32 0, i32 0
  %20 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %19, align 8
  store %struct.ipv6_ac_socklist* %20, %struct.ipv6_ac_socklist** %10, align 8
  br label %21

21:                                               ; preds = %42, %3
  %22 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %23 = icmp ne %struct.ipv6_ac_socklist* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %29 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %24
  %34 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %35 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %34, i32 0, i32 1
  %36 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %37 = call i64 @ipv6_addr_equal(i32* %35, %struct.in6_addr* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33, %27
  %41 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  store %struct.ipv6_ac_socklist* %41, %struct.ipv6_ac_socklist** %11, align 8
  br label %42

42:                                               ; preds = %40
  %43 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %44 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %43, i32 0, i32 2
  %45 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %44, align 8
  store %struct.ipv6_ac_socklist* %45, %struct.ipv6_ac_socklist** %10, align 8
  br label %21

46:                                               ; preds = %39, %21
  %47 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %48 = icmp ne %struct.ipv6_ac_socklist* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = call i32 @write_unlock_bh(i32* @ipv6_sk_ac_lock)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %88

53:                                               ; preds = %46
  %54 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %55 = icmp ne %struct.ipv6_ac_socklist* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %58 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %57, i32 0, i32 2
  %59 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %58, align 8
  %60 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %61 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %60, i32 0, i32 2
  store %struct.ipv6_ac_socklist* %59, %struct.ipv6_ac_socklist** %61, align 8
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %64 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %63, i32 0, i32 2
  %65 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %64, align 8
  %66 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %67 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %66, i32 0, i32 0
  store %struct.ipv6_ac_socklist* %65, %struct.ipv6_ac_socklist** %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = call i32 @write_unlock_bh(i32* @ipv6_sk_ac_lock)
  %70 = load %struct.net*, %struct.net** %12, align 8
  %71 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %72 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.net_device* @dev_get_by_index(%struct.net* %70, i32 %73)
  store %struct.net_device* %74, %struct.net_device** %9, align 8
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = icmp ne %struct.net_device* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %80 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %79, i32 0, i32 1
  %81 = call i32 @ipv6_dev_ac_dec(%struct.net_device* %78, i32* %80)
  %82 = load %struct.net_device*, %struct.net_device** %9, align 8
  %83 = call i32 @dev_put(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %77, %68
  %85 = load %struct.sock*, %struct.sock** %5, align 8
  %86 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %10, align 8
  %87 = call i32 @sock_kfree_s(%struct.sock* %85, %struct.ipv6_ac_socklist* %86, i32 16)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %49
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @ipv6_dev_ac_dec(%struct.net_device*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_ac_socklist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
