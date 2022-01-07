; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_marksources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_marksources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i64, i32, %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { i32, i32, %struct.ip6_sf_list* }
%struct.in6_addr = type { i32 }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MAF_GSQUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmcaddr6*, i32, %struct.in6_addr*)* @mld_marksources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mld_marksources(%struct.ifmcaddr6* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ip6_sf_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %11 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %12 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MCAST_EXCLUDE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %20 = call i32 @mld_xmarksources(%struct.ifmcaddr6* %17, i32 %18, %struct.in6_addr* %19)
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %23 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %22, i32 0, i32 2
  %24 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %23, align 8
  store %struct.ip6_sf_list* %24, %struct.ip6_sf_list** %8, align 8
  br label %25

25:                                               ; preds = %57, %21
  %26 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %27 = icmp ne %struct.ip6_sf_list* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %61

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %39, i64 %41
  %43 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %44 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %43, i32 0, i32 1
  %45 = call i64 @ipv6_addr_equal(%struct.in6_addr* %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %49 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %56

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %34

56:                                               ; preds = %47, %34
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %59 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %58, i32 0, i32 2
  %60 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %59, align 8
  store %struct.ip6_sf_list* %60, %struct.ip6_sf_list** %8, align 8
  br label %25

61:                                               ; preds = %32, %25
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @MAF_GSQUERY, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %68 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %77

71:                                               ; preds = %61
  %72 = load i32, i32* @MAF_GSQUERY, align 4
  %73 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %74 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %64, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @mld_xmarksources(%struct.ifmcaddr6*, i32, %struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
