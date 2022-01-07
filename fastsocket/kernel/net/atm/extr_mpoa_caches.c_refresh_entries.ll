; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_refresh_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_refresh_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, %struct.in_cache_entry* }
%struct.in_cache_entry = type { i64, i32, %struct.in_cache_entry*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"mpoa: mpoa_caches.c: refresh_entries\0A\00", align 1
@INGRESS_RESOLVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"mpoa: mpoa_caches.c: refreshing an entry.\0A\00", align 1
@INGRESS_REFRESHING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*)* @refresh_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refresh_entries(%struct.mpoa_client* %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.in_cache_entry*, align 8
  store %struct.mpoa_client* %0, %struct.mpoa_client** %2, align 8
  %5 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %6 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %5, i32 0, i32 1
  %7 = load %struct.in_cache_entry*, %struct.in_cache_entry** %6, align 8
  store %struct.in_cache_entry* %7, %struct.in_cache_entry** %4, align 8
  %8 = call i32 @ddprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @do_gettimeofday(%struct.timeval* %3)
  %10 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %11 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %10, i32 0, i32 0
  %12 = call i32 @read_lock_bh(i32* %11)
  br label %13

13:                                               ; preds = %54, %1
  %14 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %15 = icmp ne %struct.in_cache_entry* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %18 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INGRESS_RESOLVED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %24 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %29 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 2, %31
  %33 = sdiv i32 %32, 3
  %34 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %35 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %27, %22
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %40 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %38, %42
  %44 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %45 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* @INGRESS_REFRESHING, align 8
  %51 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %52 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %36
  br label %54

54:                                               ; preds = %53, %16
  %55 = load %struct.in_cache_entry*, %struct.in_cache_entry** %4, align 8
  %56 = getelementptr inbounds %struct.in_cache_entry, %struct.in_cache_entry* %55, i32 0, i32 2
  %57 = load %struct.in_cache_entry*, %struct.in_cache_entry** %56, align 8
  store %struct.in_cache_entry* %57, %struct.in_cache_entry** %4, align 8
  br label %13

58:                                               ; preds = %13
  %59 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %60 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %59, i32 0, i32 0
  %61 = call i32 @read_unlock_bh(i32* %60)
  ret void
}

declare dso_local i32 @ddprintk(i8*) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
