; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c___ip_map_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c___ip_map_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.ip_map = type { i32, i32, %struct.TYPE_3__, i32, %struct.unix_domain* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.unix_domain = type { i32 }
%struct.cache_head = type { i32 }

@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@NEVER = common dso_local global i64 0, align 8
@IP_HASHBITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.ip_map*, %struct.unix_domain*, i64)* @__ip_map_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip_map_update(%struct.cache_detail* %0, %struct.ip_map* %1, %struct.unix_domain* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca %struct.ip_map*, align 8
  %8 = alloca %struct.unix_domain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip_map, align 8
  %11 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %6, align 8
  store %struct.ip_map* %1, %struct.ip_map** %7, align 8
  store %struct.unix_domain* %2, %struct.unix_domain** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.unix_domain*, %struct.unix_domain** %8, align 8
  %13 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 4
  store %struct.unix_domain* %12, %struct.unix_domain** %13, align 8
  %14 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.unix_domain*, %struct.unix_domain** %8, align 8
  %17 = icmp ne %struct.unix_domain* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @CACHE_NEGATIVE, align 4
  %20 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %19, i64* %21)
  br label %36

23:                                               ; preds = %4
  %24 = load %struct.unix_domain*, %struct.unix_domain** %8, align 8
  %25 = getelementptr inbounds %struct.unix_domain, %struct.unix_domain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @NEVER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %31, %23
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %41 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %10, i32 0, i32 2
  %42 = load %struct.ip_map*, %struct.ip_map** %7, align 8
  %43 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %42, i32 0, i32 2
  %44 = load %struct.ip_map*, %struct.ip_map** %7, align 8
  %45 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IP_HASHBITS, align 4
  %48 = call i32 @hash_str(i32 %46, i32 %47)
  %49 = load %struct.ip_map*, %struct.ip_map** %7, align 8
  %50 = getelementptr inbounds %struct.ip_map, %struct.ip_map* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @hash_ip6(i32 %51)
  %53 = xor i32 %48, %52
  %54 = call %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail* %40, %struct.TYPE_3__* %41, %struct.TYPE_3__* %43, i32 %53)
  store %struct.cache_head* %54, %struct.cache_head** %11, align 8
  %55 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %56 = icmp ne %struct.cache_head* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %36
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %64

60:                                               ; preds = %36
  %61 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %62 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %63 = call i32 @cache_put(%struct.cache_head* %61, %struct.cache_detail* %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @hash_str(i32, i32) #1

declare dso_local i32 @hash_ip6(i32) #1

declare dso_local i32 @cache_put(%struct.cache_head*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
