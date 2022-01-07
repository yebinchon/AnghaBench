; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_ksize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_ksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.kmem_cache* }
%struct.kmem_cache = type { i32, i64, i64, i64 }

@ZERO_SIZE_PTR = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@SLAB_DESTROY_BY_RCU = common dso_local global i32 0, align 4
@SLAB_STORE_USER = common dso_local global i32 0, align 4
@SLAB_POISON = common dso_local global i32 0, align 4
@SLAB_RED_ZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ksize(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** @ZERO_SIZE_PTR, align 8
  %8 = icmp eq i8* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %54

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.page* @virt_to_head_page(i8* %14)
  store %struct.page* %15, %struct.page** %4, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @PageSlab(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @PageCompound(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i64 @compound_order(%struct.page* %31)
  %33 = shl i64 %30, %32
  store i64 %33, i64* %2, align 8
  br label %54

34:                                               ; preds = %13
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** %36, align 8
  store %struct.kmem_cache* %37, %struct.kmem_cache** %5, align 8
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %39 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SLAB_DESTROY_BY_RCU, align 4
  %42 = load i32, i32* @SLAB_STORE_USER, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %48 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %2, align 8
  br label %54

50:                                               ; preds = %34
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %52 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %50, %46, %23, %12
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i64 @compound_order(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
