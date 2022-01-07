; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_sock_mc_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_sock_mc_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.ipv6_mc_socklist = type { i32, %struct.ipv6_mc_socklist*, i32*, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_mc_socklist* }
%struct.net = type { i32 }
%struct.rt6_info = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ipv6_sk_mc_lock = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_sock_mc_join(%struct.sock* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ipv6_mc_socklist*, align 8
  %10 = alloca %struct.ipv6_pinfo*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rt6_info*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %14)
  store %struct.ipv6_pinfo* %15, %struct.ipv6_pinfo** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %19 = call i32 @ipv6_addr_is_multicast(%struct.in6_addr* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %144

24:                                               ; preds = %3
  %25 = call i32 @read_lock_bh(i32* @ipv6_sk_mc_lock)
  %26 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %27 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %26, i32 0, i32 0
  %28 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %27, align 8
  store %struct.ipv6_mc_socklist* %28, %struct.ipv6_mc_socklist** %9, align 8
  br label %29

29:                                               ; preds = %52, %24
  %30 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %31 = icmp ne %struct.ipv6_mc_socklist* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %37 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %32
  %42 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %43 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %42, i32 0, i32 5
  %44 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %45 = call i64 @ipv6_addr_equal(i32* %43, %struct.in6_addr* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = call i32 @read_unlock_bh(i32* @ipv6_sk_mc_lock)
  %49 = load i32, i32* @EADDRINUSE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %144

51:                                               ; preds = %41, %35
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %54 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %53, i32 0, i32 1
  %55 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %54, align 8
  store %struct.ipv6_mc_socklist* %55, %struct.ipv6_mc_socklist** %9, align 8
  br label %29

56:                                               ; preds = %29
  %57 = call i32 @read_unlock_bh(i32* @ipv6_sk_mc_lock)
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.ipv6_mc_socklist* @sock_kmalloc(%struct.sock* %58, i32 40, i32 %59)
  store %struct.ipv6_mc_socklist* %60, %struct.ipv6_mc_socklist** %9, align 8
  %61 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %62 = icmp eq %struct.ipv6_mc_socklist* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %144

66:                                               ; preds = %56
  %67 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %68 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %67, i32 0, i32 1
  store %struct.ipv6_mc_socklist* null, %struct.ipv6_mc_socklist** %68, align 8
  %69 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %70 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %69, i32 0, i32 5
  %71 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %72 = call i32 @ipv6_addr_copy(i32* %70, %struct.in6_addr* %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %66
  %76 = load %struct.net*, %struct.net** %11, align 8
  %77 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %78 = call %struct.rt6_info* @rt6_lookup(%struct.net* %76, %struct.in6_addr* %77, i32* null, i32 0, i32 0)
  store %struct.rt6_info* %78, %struct.rt6_info** %13, align 8
  %79 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %80 = icmp ne %struct.rt6_info* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %83 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %82, i32 0, i32 1
  %84 = load %struct.net_device*, %struct.net_device** %83, align 8
  store %struct.net_device* %84, %struct.net_device** %8, align 8
  %85 = load %struct.net_device*, %struct.net_device** %8, align 8
  %86 = call i32 @dev_hold(%struct.net_device* %85)
  %87 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %88 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @dst_release(i32* %89)
  br label %91

91:                                               ; preds = %81, %75
  br label %96

92:                                               ; preds = %66
  %93 = load %struct.net*, %struct.net** %11, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call %struct.net_device* @dev_get_by_index(%struct.net* %93, i32 %94)
  store %struct.net_device* %95, %struct.net_device** %8, align 8
  br label %96

96:                                               ; preds = %92, %91
  %97 = load %struct.net_device*, %struct.net_device** %8, align 8
  %98 = icmp eq %struct.net_device* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.sock*, %struct.sock** %5, align 8
  %101 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %102 = call i32 @sock_kfree_s(%struct.sock* %100, %struct.ipv6_mc_socklist* %101, i32 40)
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %144

105:                                              ; preds = %96
  %106 = load %struct.net_device*, %struct.net_device** %8, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %110 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @MCAST_EXCLUDE, align 4
  %112 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %113 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %115 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %114, i32 0, i32 3
  %116 = call i32 @rwlock_init(i32* %115)
  %117 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %118 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %117, i32 0, i32 2
  store i32* null, i32** %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %8, align 8
  %120 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %121 = call i32 @ipv6_dev_mc_inc(%struct.net_device* %119, %struct.in6_addr* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %105
  %125 = load %struct.sock*, %struct.sock** %5, align 8
  %126 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %127 = call i32 @sock_kfree_s(%struct.sock* %125, %struct.ipv6_mc_socklist* %126, i32 40)
  %128 = load %struct.net_device*, %struct.net_device** %8, align 8
  %129 = call i32 @dev_put(%struct.net_device* %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %4, align 4
  br label %144

131:                                              ; preds = %105
  %132 = call i32 @write_lock_bh(i32* @ipv6_sk_mc_lock)
  %133 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %134 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %133, i32 0, i32 0
  %135 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %134, align 8
  %136 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %137 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %136, i32 0, i32 1
  store %struct.ipv6_mc_socklist* %135, %struct.ipv6_mc_socklist** %137, align 8
  %138 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %139 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %140 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %139, i32 0, i32 0
  store %struct.ipv6_mc_socklist* %138, %struct.ipv6_mc_socklist** %140, align 8
  %141 = call i32 @write_unlock_bh(i32* @ipv6_sk_mc_lock)
  %142 = load %struct.net_device*, %struct.net_device** %8, align 8
  %143 = call i32 @dev_put(%struct.net_device* %142)
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %131, %124, %99, %63, %47, %21
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local %struct.ipv6_mc_socklist* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(%struct.net*, %struct.in6_addr*, i32*, i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_mc_socklist*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @ipv6_dev_mc_inc(%struct.net_device*, %struct.in6_addr*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
