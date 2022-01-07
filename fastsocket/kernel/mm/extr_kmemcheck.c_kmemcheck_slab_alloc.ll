; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemcheck.c_kmemcheck_slab_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemcheck.c_kmemcheck_slab_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@SLAB_NOTRACK = common dso_local global i32 0, align 4
@kmemcheck_enabled = common dso_local global i32 0, align 4
@__GFP_NOTRACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmemcheck_slab_alloc(%struct.kmem_cache* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @__GFP_ZERO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %44

14:                                               ; preds = %4
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %16 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SLAB_NOTRACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %44

22:                                               ; preds = %14
  %23 = load i32, i32* @kmemcheck_enabled, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @__GFP_NOTRACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @kmemcheck_mark_initialized(i8* %31, i64 %32)
  br label %44

34:                                               ; preds = %25
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %36 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @kmemcheck_mark_uninitialized(i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %13, %21, %43, %30
  ret void
}

declare dso_local i32 @kmemcheck_mark_initialized(i8*, i64) #1

declare dso_local i32 @kmemcheck_mark_uninitialized(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
