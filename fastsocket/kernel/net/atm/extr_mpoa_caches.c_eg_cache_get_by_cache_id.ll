; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_eg_cache_get_by_cache_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_eg_cache_get_by_cache_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mpoa_client = type { i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64, %struct.mpoa_client*)* @eg_cache_get_by_cache_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @eg_cache_get_by_cache_id(i64 %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  %7 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %8 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %7, i32 0, i32 0
  %9 = call i32 @read_lock_irq(i32* %8)
  %10 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %11 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  br label %13

13:                                               ; preds = %31, %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %28 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %27, i32 0, i32 0
  %29 = call i32 @read_unlock_irq(i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %3, align 8
  br label %39

31:                                               ; preds = %16
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %6, align 8
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %37 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %36, i32 0, i32 0
  %38 = call i32 @read_unlock_irq(i32* %37)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %39

39:                                               ; preds = %35, %23
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %40
}

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
