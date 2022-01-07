; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_in_cache_get_with_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_in_cache_get_with_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mpoa_client = type { i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, %struct.mpoa_client*, i32)* @in_cache_get_with_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @in_cache_get_with_mask(i32 %0, %struct.mpoa_client* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpoa_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.mpoa_client* %1, %struct.mpoa_client** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %10 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %9, i32 0, i32 0
  %11 = call i32 @read_lock_bh(i32* %10)
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  br label %15

15:                                               ; preds = %37, %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %34 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %33, i32 0, i32 0
  %35 = call i32 @read_unlock_bh(i32* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %4, align 8
  br label %45

37:                                               ; preds = %18
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %8, align 8
  br label %15

41:                                               ; preds = %15
  %42 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %43 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %42, i32 0, i32 0
  %44 = call i32 @read_unlock_bh(i32* %43)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %45

45:                                               ; preds = %41, %29
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %46
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
