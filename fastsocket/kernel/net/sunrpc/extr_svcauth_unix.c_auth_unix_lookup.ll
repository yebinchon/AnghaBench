; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_auth_unix_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_auth_unix_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_domain = type { i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ip_map = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.auth_domain }

@.str = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@ip_map_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_domain* @auth_unix_lookup(%struct.net* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.auth_domain*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ip_map*, align 8
  %7 = alloca %struct.auth_domain*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %10 = call %struct.ip_map* @ip_map_lookup(%struct.net* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.in6_addr* %9)
  store %struct.ip_map* %10, %struct.ip_map** %6, align 8
  %11 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  %12 = icmp ne %struct.ip_map* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.auth_domain* null, %struct.auth_domain** %3, align 8
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  %16 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %15, i32 0, i32 1
  %17 = call i64 @cache_check(i32* @ip_map_cache, i32* %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.auth_domain* null, %struct.auth_domain** %3, align 8
  br label %48

20:                                               ; preds = %14
  %21 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  %22 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  %27 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  %33 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %32, i32 0, i32 1
  %34 = call i32 @sunrpc_invalidate(i32* %33, i32* @ip_map_cache)
  store %struct.auth_domain* null, %struct.auth_domain** %7, align 8
  br label %43

35:                                               ; preds = %20
  %36 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  %37 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.auth_domain* %39, %struct.auth_domain** %7, align 8
  %40 = load %struct.auth_domain*, %struct.auth_domain** %7, align 8
  %41 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %40, i32 0, i32 0
  %42 = call i32 @kref_get(i32* %41)
  br label %43

43:                                               ; preds = %35, %31
  %44 = load %struct.ip_map*, %struct.ip_map** %6, align 8
  %45 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %44, i32 0, i32 1
  %46 = call i32 @cache_put(i32* %45, i32* @ip_map_cache)
  %47 = load %struct.auth_domain*, %struct.auth_domain** %7, align 8
  store %struct.auth_domain* %47, %struct.auth_domain** %3, align 8
  br label %48

48:                                               ; preds = %43, %19, %13
  %49 = load %struct.auth_domain*, %struct.auth_domain** %3, align 8
  ret %struct.auth_domain* %49
}

declare dso_local %struct.ip_map* @ip_map_lookup(%struct.net*, i8*, %struct.in6_addr*) #1

declare dso_local i64 @cache_check(i32*, i32*, i32*) #1

declare dso_local i32 @sunrpc_invalidate(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
