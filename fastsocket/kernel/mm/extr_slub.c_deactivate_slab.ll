; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_deactivate_slab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_deactivate_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.kmem_cache_cpu = type { i8**, i64, %struct.page* }
%struct.page = type { i8**, i32 }

@DEACTIVATE_REMOTE_FREES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.kmem_cache_cpu*)* @deactivate_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_slab(%struct.kmem_cache* %0, %struct.kmem_cache_cpu* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.kmem_cache_cpu*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store %struct.kmem_cache_cpu* %1, %struct.kmem_cache_cpu** %4, align 8
  %8 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %9 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %8, i32 0, i32 2
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %17 = load i32, i32* @DEACTIVATE_REMOTE_FREES, align 4
  %18 = call i32 @stat(%struct.kmem_cache_cpu* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  br label %20

20:                                               ; preds = %26, %19
  %21 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %22 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = call i64 @unlikely(i8** %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  %27 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %28 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  store i8** %29, i8*** %7, align 8
  %30 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %31 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %34 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i8**
  %39 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %40 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %39, i32 0, i32 0
  store i8** %38, i8*** %40, align 8
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = bitcast i8** %43 to i8*
  %45 = load i8**, i8*** %7, align 8
  %46 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %47 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %44, i8** %49, align 8
  %50 = load i8**, i8*** %7, align 8
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  store i8** %50, i8*** %52, align 8
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %59 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %58, i32 0, i32 2
  store %struct.page* null, %struct.page** %59, align 8
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @unfreeze_slab(%struct.kmem_cache* %60, %struct.page* %61, i32 %62)
  ret void
}

declare dso_local i32 @stat(%struct.kmem_cache_cpu*, i32) #1

declare dso_local i64 @unlikely(i8**) #1

declare dso_local i32 @unfreeze_slab(%struct.kmem_cache*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
