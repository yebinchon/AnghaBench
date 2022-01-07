; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_calculate_slab_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_calculate_slab_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@KMALLOC_MAX_ORDER = common dso_local global i32 0, align 4
@CFLGS_OFF_SLAB = common dso_local global i64 0, align 8
@SLAB_RECLAIM_ACCOUNT = common dso_local global i64 0, align 8
@slab_break_gfp_order = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kmem_cache*, i64, i64, i64)* @calculate_slab_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calculate_slab_order(%struct.kmem_cache* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %71, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @KMALLOC_MAX_ORDER, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load i32, i32* %11, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @cache_estimate(i32 %19, i64 %20, i64 %21, i64 %22, i64* %13, i32* %12)
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %71

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @CFLGS_OFF_SLAB, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, 4
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = udiv i64 %35, 4
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %9, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %74

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %46 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %49 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @SLAB_RECLAIM_ACCOUNT, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %74

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @slab_break_gfp_order, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %74

61:                                               ; preds = %56
  %62 = load i64, i64* %10, align 8
  %63 = mul i64 %62, 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = icmp ule i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %74

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %26
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %14

74:                                               ; preds = %69, %60, %55, %41, %14
  %75 = load i64, i64* %10, align 8
  ret i64 %75
}

declare dso_local i32 @cache_estimate(i32, i64, i64, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
