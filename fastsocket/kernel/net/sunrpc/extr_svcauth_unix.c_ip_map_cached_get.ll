; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_map = type { i32 }
%struct.svc_xprt = type { i32, %struct.ip_map*, i32 }

@XPT_CACHE_AUTH = common dso_local global i32 0, align 4
@ip_map_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_map* (%struct.svc_xprt*)* @ip_map_cached_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_map* @ip_map_cached_get(%struct.svc_xprt* %0) #0 {
  %2 = alloca %struct.ip_map*, align 8
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca %struct.ip_map*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %3, align 8
  store %struct.ip_map* null, %struct.ip_map** %4, align 8
  %5 = load i32, i32* @XPT_CACHE_AUTH, align 4
  %6 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %7 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %6, i32 0, i32 2
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %12 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %14, i32 0, i32 1
  %16 = load %struct.ip_map*, %struct.ip_map** %15, align 8
  store %struct.ip_map* %16, %struct.ip_map** %4, align 8
  %17 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %18 = icmp ne %struct.ip_map* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %10
  %20 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %21 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %20, i32 0, i32 0
  %22 = call i32 @cache_valid(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %26 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %25, i32 0, i32 1
  store %struct.ip_map* null, %struct.ip_map** %26, align 8
  %27 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %28 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %31 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %30, i32 0, i32 0
  %32 = call i32 @cache_put(i32* %31, i32* @ip_map_cache)
  store %struct.ip_map* null, %struct.ip_map** %2, align 8
  br label %43

33:                                               ; preds = %19
  %34 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %35 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %34, i32 0, i32 0
  %36 = call i32 @cache_get(i32* %35)
  br label %37

37:                                               ; preds = %33, %10
  %38 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %39 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  store %struct.ip_map* %42, %struct.ip_map** %2, align 8
  br label %43

43:                                               ; preds = %41, %24
  %44 = load %struct.ip_map*, %struct.ip_map** %2, align 8
  ret %struct.ip_map* %44
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cache_valid(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

declare dso_local i32 @cache_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
