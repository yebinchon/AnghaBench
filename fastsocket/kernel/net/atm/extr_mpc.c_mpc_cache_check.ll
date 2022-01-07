; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpc_cache_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpc_cache_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { %struct.mpoa_client*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.mpoa_client*)* }

@mpcs = common dso_local global %struct.mpoa_client* null, align 8
@mpc_cache_check.previous_resolving_check_time = internal global i64 0, align 8
@mpc_cache_check.previous_refresh_time = internal global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mpc_cache_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_cache_check(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mpoa_client*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.mpoa_client*, %struct.mpoa_client** @mpcs, align 8
  store %struct.mpoa_client* %4, %struct.mpoa_client** %3, align 8
  br label %5

5:                                                ; preds = %62, %1
  %6 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %7 = icmp ne %struct.mpoa_client* %6, null
  br i1 %7, label %8, label %66

8:                                                ; preds = %5
  %9 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %10 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %12, align 8
  %14 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %15 = call i32 %13(%struct.mpoa_client* %14)
  %16 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %17 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %19, align 8
  %21 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %22 = call i32 %20(%struct.mpoa_client* %21)
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @mpc_cache_check.previous_resolving_check_time, align 8
  %25 = sub i64 %23, %24
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HZ, align 8
  %31 = mul i64 %29, %30
  %32 = icmp ugt i64 %25, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %8
  %34 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %35 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %37, align 8
  %39 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %40 = call i32 %38(%struct.mpoa_client* %39)
  %41 = load i64, i64* %2, align 8
  store i64 %41, i64* @mpc_cache_check.previous_resolving_check_time, align 8
  br label %42

42:                                               ; preds = %33, %8
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @mpc_cache_check.previous_refresh_time, align 8
  %45 = sub i64 %43, %44
  %46 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %47 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HZ, align 8
  %51 = mul i64 %49, %50
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %55 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.mpoa_client*)*, i32 (%struct.mpoa_client*)** %57, align 8
  %59 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %60 = call i32 %58(%struct.mpoa_client* %59)
  %61 = load i64, i64* %2, align 8
  store i64 %61, i64* @mpc_cache_check.previous_refresh_time, align 8
  br label %62

62:                                               ; preds = %53, %42
  %63 = load %struct.mpoa_client*, %struct.mpoa_client** %3, align 8
  %64 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %63, i32 0, i32 0
  %65 = load %struct.mpoa_client*, %struct.mpoa_client** %64, align 8
  store %struct.mpoa_client* %65, %struct.mpoa_client** %3, align 8
  br label %5

66:                                               ; preds = %5
  %67 = call i32 (...) @mpc_timer_refresh()
  ret void
}

declare dso_local i32 @mpc_timer_refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
