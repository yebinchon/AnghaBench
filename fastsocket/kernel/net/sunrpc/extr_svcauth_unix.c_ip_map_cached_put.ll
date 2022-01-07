; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_ip_map_cached_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32, %struct.ip_map*, i32 }
%struct.ip_map = type { i32 }

@XPT_CACHE_AUTH = common dso_local global i32 0, align 4
@ip_map_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_xprt*, %struct.ip_map*)* @ip_map_cached_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_map_cached_put(%struct.svc_xprt* %0, %struct.ip_map* %1) #0 {
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca %struct.ip_map*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %3, align 8
  store %struct.ip_map* %1, %struct.ip_map** %4, align 8
  %5 = load i32, i32* @XPT_CACHE_AUTH, align 4
  %6 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %7 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %6, i32 0, i32 2
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %12 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %14, i32 0, i32 1
  %16 = load %struct.ip_map*, %struct.ip_map** %15, align 8
  %17 = icmp eq %struct.ip_map* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %20 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %21 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %20, i32 0, i32 1
  store %struct.ip_map* %19, %struct.ip_map** %21, align 8
  store %struct.ip_map* null, %struct.ip_map** %4, align 8
  br label %22

22:                                               ; preds = %18, %10
  %23 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %28 = icmp ne %struct.ip_map* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.ip_map*, %struct.ip_map** %4, align 8
  %31 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %30, i32 0, i32 0
  %32 = call i32 @cache_put(i32* %31, i32* @ip_map_cache)
  br label %33

33:                                               ; preds = %29, %26
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
