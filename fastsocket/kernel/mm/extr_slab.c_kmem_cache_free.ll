; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_cache_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_cache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@SLAB_DEBUG_OBJECTS = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_cache_free(%struct.kmem_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %10 = call i32 @obj_size(%struct.kmem_cache* %9)
  %11 = call i32 @debug_check_no_locks_freed(i8* %8, i32 %10)
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %13 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SLAB_DEBUG_OBJECTS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %21 = call i32 @obj_size(%struct.kmem_cache* %20)
  %22 = call i32 @debug_check_no_obj_freed(i8* %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @__cache_free(%struct.kmem_cache* %24, i8* %25)
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @local_irq_restore(i64 %27)
  %29 = load i32, i32* @_RET_IP_, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @trace_kmem_cache_free(i32 %29, i8* %30)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @debug_check_no_locks_freed(i8*, i32) #1

declare dso_local i32 @obj_size(%struct.kmem_cache*) #1

declare dso_local i32 @debug_check_no_obj_freed(i8*, i32) #1

declare dso_local i32 @__cache_free(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @trace_kmem_cache_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
