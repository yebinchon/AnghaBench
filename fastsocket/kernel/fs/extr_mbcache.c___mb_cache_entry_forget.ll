; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mbcache.c___mb_cache_entry_forget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mbcache.c___mb_cache_entry_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb_cache_entry = type { i32, i64, i64, %struct.mb_cache* }
%struct.mb_cache = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.mb_cache_entry*, i32)* }

@mb_cache_spinlock = common dso_local global i32 0, align 4
@mb_cache_lru_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mb_cache_entry*, i32)* @__mb_cache_entry_forget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mb_cache_entry_forget(%struct.mb_cache_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.mb_cache_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mb_cache*, align 8
  store %struct.mb_cache_entry* %0, %struct.mb_cache_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %3, align 8
  %7 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %6, i32 0, i32 3
  %8 = load %struct.mb_cache*, %struct.mb_cache** %7, align 8
  store %struct.mb_cache* %8, %struct.mb_cache** %5, align 8
  %9 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %3, align 8
  %10 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %3, align 8
  %15 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @mb_assert(i32 %21)
  %23 = load %struct.mb_cache*, %struct.mb_cache** %5, align 8
  %24 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.mb_cache_entry*, i32)*, i64 (%struct.mb_cache_entry*, i32)** %25, align 8
  %27 = icmp ne i64 (%struct.mb_cache_entry*, i32)* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %18
  %29 = load %struct.mb_cache*, %struct.mb_cache** %5, align 8
  %30 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64 (%struct.mb_cache_entry*, i32)*, i64 (%struct.mb_cache_entry*, i32)** %31, align 8
  %33 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 %32(%struct.mb_cache_entry* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = call i32 @spin_lock(i32* @mb_cache_spinlock)
  %39 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %3, align 8
  %40 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %39, i32 0, i32 0
  %41 = call i32 @list_add(i32* %40, i32* @mb_cache_lru_list)
  %42 = call i32 @spin_unlock(i32* @mb_cache_spinlock)
  br label %52

43:                                               ; preds = %28, %18
  %44 = load %struct.mb_cache*, %struct.mb_cache** %5, align 8
  %45 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %3, align 8
  %48 = call i32 @kmem_cache_free(i32 %46, %struct.mb_cache_entry* %47)
  %49 = load %struct.mb_cache*, %struct.mb_cache** %5, align 8
  %50 = getelementptr inbounds %struct.mb_cache, %struct.mb_cache* %49, i32 0, i32 0
  %51 = call i32 @atomic_dec(i32* %50)
  br label %52

52:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @mb_assert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.mb_cache_entry*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
