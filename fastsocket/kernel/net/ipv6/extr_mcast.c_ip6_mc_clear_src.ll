; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_clear_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_clear_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i64, i32*, %struct.ip6_sf_list*, %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { %struct.ip6_sf_list* }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @ip6_mc_clear_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_mc_clear_src(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca %struct.ip6_sf_list*, align 8
  %4 = alloca %struct.ip6_sf_list*, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %5 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %6 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %5, i32 0, i32 3
  %7 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %6, align 8
  store %struct.ip6_sf_list* %7, %struct.ip6_sf_list** %3, align 8
  br label %8

8:                                                ; preds = %17, %1
  %9 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %10 = icmp ne %struct.ip6_sf_list* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %13 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %12, i32 0, i32 0
  %14 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %13, align 8
  store %struct.ip6_sf_list* %14, %struct.ip6_sf_list** %4, align 8
  %15 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %16 = call i32 @kfree(%struct.ip6_sf_list* %15)
  br label %17

17:                                               ; preds = %11
  %18 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  store %struct.ip6_sf_list* %18, %struct.ip6_sf_list** %3, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %21 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %20, i32 0, i32 3
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %21, align 8
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %23 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %22, i32 0, i32 2
  %24 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %23, align 8
  store %struct.ip6_sf_list* %24, %struct.ip6_sf_list** %3, align 8
  br label %25

25:                                               ; preds = %34, %19
  %26 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %27 = icmp ne %struct.ip6_sf_list* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %30 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %29, i32 0, i32 0
  %31 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %30, align 8
  store %struct.ip6_sf_list* %31, %struct.ip6_sf_list** %4, align 8
  %32 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %33 = call i32 @kfree(%struct.ip6_sf_list* %32)
  br label %34

34:                                               ; preds = %28
  %35 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  store %struct.ip6_sf_list* %35, %struct.ip6_sf_list** %3, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %38 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %37, i32 0, i32 2
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %38, align 8
  %39 = load i64, i64* @MCAST_EXCLUDE, align 8
  %40 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %41 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %43 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @MCAST_INCLUDE, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 0, i32* %46, align 4
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %48 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @MCAST_EXCLUDE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 1, i32* %51, align 4
  ret void
}

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
