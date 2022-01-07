; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_inet6_mc_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_inet6_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_mc_socklist* }
%struct.ipv6_mc_socklist = type { i64, i32, %struct.ip6_sf_socklist*, i32, %struct.ipv6_mc_socklist* }
%struct.ip6_sf_socklist = type { i32, i32* }

@ipv6_sk_mc_lock = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_mc_check(%struct.sock* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.ipv6_mc_socklist*, align 8
  %10 = alloca %struct.ip6_sf_socklist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %13)
  store %struct.ipv6_pinfo* %14, %struct.ipv6_pinfo** %8, align 8
  store i32 1, i32* %11, align 4
  %15 = call i32 @read_lock(i32* @ipv6_sk_mc_lock)
  %16 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %17 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %16, i32 0, i32 0
  %18 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %17, align 8
  store %struct.ipv6_mc_socklist* %18, %struct.ipv6_mc_socklist** %9, align 8
  br label %19

19:                                               ; preds = %30, %3
  %20 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %21 = icmp ne %struct.ipv6_mc_socklist* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %24 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %23, i32 0, i32 3
  %25 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %26 = call i64 @ipv6_addr_equal(i32* %24, %struct.in6_addr* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %32 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %31, i32 0, i32 4
  %33 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %32, align 8
  store %struct.ipv6_mc_socklist* %33, %struct.ipv6_mc_socklist** %9, align 8
  br label %19

34:                                               ; preds = %28, %19
  %35 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %36 = icmp ne %struct.ipv6_mc_socklist* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 @read_unlock(i32* @ipv6_sk_mc_lock)
  store i32 1, i32* %4, align 4
  br label %110

39:                                               ; preds = %34
  %40 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %41 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %40, i32 0, i32 1
  %42 = call i32 @read_lock(i32* %41)
  %43 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %44 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %43, i32 0, i32 2
  %45 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %44, align 8
  store %struct.ip6_sf_socklist* %45, %struct.ip6_sf_socklist** %10, align 8
  %46 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %10, align 8
  %47 = icmp ne %struct.ip6_sf_socklist* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %50 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MCAST_EXCLUDE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %104

55:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %10, align 8
  %59 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %10, align 8
  %64 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %70 = call i64 @ipv6_addr_equal(i32* %68, %struct.in6_addr* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %77

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %56

77:                                               ; preds = %72, %56
  %78 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %79 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MCAST_INCLUDE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %10, align 8
  %86 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %83, %77
  %91 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %92 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MCAST_EXCLUDE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.ip6_sf_socklist*, %struct.ip6_sf_socklist** %10, align 8
  %99 = getelementptr inbounds %struct.ip6_sf_socklist, %struct.ip6_sf_socklist* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %96, %90
  br label %104

104:                                              ; preds = %103, %48
  %105 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %9, align 8
  %106 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %105, i32 0, i32 1
  %107 = call i32 @read_unlock(i32* %106)
  %108 = call i32 @read_unlock(i32* @ipv6_sk_mc_lock)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %37
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
