; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_add_scan_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_add_scan_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i64, i32, i32 }
%struct.kmemleak_scan_area = type { i64, i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Adding scan area to unknown object at 0x%08lx\0A\00", align 1
@scan_area_cache = common dso_local global i32 0, align 4
@GFP_KMEMLEAK_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot allocate a scan area\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Scan area larger than object 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32)* @add_scan_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_scan_area(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.kmemleak_object*, align 8
  %11 = alloca %struct.kmemleak_scan_area*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.kmemleak_object* @find_and_get_object(i64 %12, i32 0)
  store %struct.kmemleak_object* %13, %struct.kmemleak_object** %10, align 8
  %14 = load %struct.kmemleak_object*, %struct.kmemleak_object** %10, align 8
  %15 = icmp ne %struct.kmemleak_object* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i8*, ...) @kmemleak_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %72

19:                                               ; preds = %4
  %20 = load i32, i32* @scan_area_cache, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KMEMLEAK_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call %struct.kmemleak_scan_area* @kmem_cache_alloc(i32 %20, i32 %23)
  store %struct.kmemleak_scan_area* %24, %struct.kmemleak_scan_area** %11, align 8
  %25 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %11, align 8
  %26 = icmp ne %struct.kmemleak_scan_area* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = call i32 (i8*, ...) @kmemleak_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %69

29:                                               ; preds = %19
  %30 = load %struct.kmemleak_object*, %struct.kmemleak_object** %10, align 8
  %31 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %30, i32 0, i32 1
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.kmemleak_object*, %struct.kmemleak_object** %10, align 8
  %38 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i8*, ...) @kmemleak_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load %struct.kmemleak_object*, %struct.kmemleak_object** %10, align 8
  %45 = call i32 @dump_object_info(%struct.kmemleak_object* %44)
  %46 = load i32, i32* @scan_area_cache, align 4
  %47 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %11, align 8
  %48 = call i32 @kmem_cache_free(i32 %46, %struct.kmemleak_scan_area* %47)
  br label %64

49:                                               ; preds = %29
  %50 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %11, align 8
  %51 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %50, i32 0, i32 2
  %52 = call i32 @INIT_HLIST_NODE(i32* %51)
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %11, align 8
  %55 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %11, align 8
  %58 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %11, align 8
  %60 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %59, i32 0, i32 2
  %61 = load %struct.kmemleak_object*, %struct.kmemleak_object** %10, align 8
  %62 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %61, i32 0, i32 2
  %63 = call i32 @hlist_add_head(i32* %60, i32* %62)
  br label %64

64:                                               ; preds = %49, %41
  %65 = load %struct.kmemleak_object*, %struct.kmemleak_object** %10, align 8
  %66 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %65, i32 0, i32 1
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %27
  %70 = load %struct.kmemleak_object*, %struct.kmemleak_object** %10, align 8
  %71 = call i32 @put_object(%struct.kmemleak_object* %70)
  br label %72

72:                                               ; preds = %69, %16
  ret void
}

declare dso_local %struct.kmemleak_object* @find_and_get_object(i64, i32) #1

declare dso_local i32 @kmemleak_warn(i8*, ...) #1

declare dso_local %struct.kmemleak_scan_area* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dump_object_info(%struct.kmemleak_object*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kmemleak_scan_area*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
