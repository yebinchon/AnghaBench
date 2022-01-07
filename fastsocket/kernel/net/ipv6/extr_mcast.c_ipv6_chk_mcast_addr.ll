; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_chk_mcast_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_chk_mcast_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64*, i32, %struct.ip6_sf_list*, i32, %struct.ifmcaddr6* }
%struct.ip6_sf_list = type { i64*, i32, %struct.ip6_sf_list* }

@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_chk_mcast_addr(%struct.net_device* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.ifmcaddr6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip6_sf_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %11)
  store %struct.inet6_dev* %12, %struct.inet6_dev** %7, align 8
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %14 = icmp ne %struct.inet6_dev* %13, null
  br i1 %14, label %15, label %118

15:                                               ; preds = %3
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 0
  %18 = call i32 @read_lock_bh(i32* %17)
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 1
  %21 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %20, align 8
  store %struct.ifmcaddr6* %21, %struct.ifmcaddr6** %8, align 8
  br label %22

22:                                               ; preds = %33, %15
  %23 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %24 = icmp ne %struct.ifmcaddr6* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %27 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %26, i32 0, i32 3
  %28 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %29 = call i64 @ipv6_addr_equal(i32* %27, %struct.in6_addr* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %37

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %35 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %34, i32 0, i32 4
  %36 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %35, align 8
  store %struct.ifmcaddr6* %36, %struct.ifmcaddr6** %8, align 8
  br label %22

37:                                               ; preds = %31, %22
  %38 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %39 = icmp ne %struct.ifmcaddr6* %38, null
  br i1 %39, label %40, label %112

40:                                               ; preds = %37
  %41 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %42 = icmp ne %struct.in6_addr* %41, null
  br i1 %42, label %43, label %110

43:                                               ; preds = %40
  %44 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %45 = call i32 @ipv6_addr_any(%struct.in6_addr* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %110, label %47

47:                                               ; preds = %43
  %48 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %49 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %52 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %51, i32 0, i32 2
  %53 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %52, align 8
  store %struct.ip6_sf_list* %53, %struct.ip6_sf_list** %10, align 8
  br label %54

54:                                               ; preds = %65, %47
  %55 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %56 = icmp ne %struct.ip6_sf_list* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %59 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %58, i32 0, i32 1
  %60 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %61 = call i64 @ipv6_addr_equal(i32* %59, %struct.in6_addr* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %67 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %66, i32 0, i32 2
  %68 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %67, align 8
  store %struct.ip6_sf_list* %68, %struct.ip6_sf_list** %10, align 8
  br label %54

69:                                               ; preds = %63, %54
  %70 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %71 = icmp ne %struct.ip6_sf_list* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %74 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @MCAST_INCLUDE, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %72
  %81 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %82 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @MCAST_EXCLUDE, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %88 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @MCAST_EXCLUDE, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %86, %92
  br label %94

94:                                               ; preds = %80, %72
  %95 = phi i1 [ true, %72 ], [ %93, %80 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %106

97:                                               ; preds = %69
  %98 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %99 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @MCAST_EXCLUDE, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %97, %94
  %107 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %108 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock_bh(i32* %108)
  br label %111

110:                                              ; preds = %43, %40
  store i32 1, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %106
  br label %112

112:                                              ; preds = %111, %37
  %113 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %114 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %113, i32 0, i32 0
  %115 = call i32 @read_unlock_bh(i32* %114)
  %116 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %117 = call i32 @in6_dev_put(%struct.inet6_dev* %116)
  br label %118

118:                                              ; preds = %112, %3
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
