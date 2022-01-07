; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_percpu-vm.c_pcpu_get_pages_and_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_percpu-vm.c_pcpu_get_pages_and_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.pcpu_chunk = type { i32 }

@pcpu_get_pages_and_bitmap.pages = internal global %struct.page** null, align 8
@pcpu_get_pages_and_bitmap.bitmap = internal global i64* null, align 8
@pcpu_nr_units = common dso_local global i32 0, align 4
@pcpu_unit_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (%struct.pcpu_chunk*, i64**, i32)* @pcpu_get_pages_and_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @pcpu_get_pages_and_bitmap(%struct.pcpu_chunk* %0, i64** %1, i32 %2) #0 {
  %4 = alloca %struct.page**, align 8
  %5 = alloca %struct.pcpu_chunk*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pcpu_chunk* %0, %struct.pcpu_chunk** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @pcpu_nr_units, align 4
  %11 = load i32, i32* @pcpu_unit_pages, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @pcpu_unit_pages, align 4
  %16 = call i32 @BITS_TO_LONGS(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.page**, %struct.page*** @pcpu_get_pages_and_bitmap.pages, align 8
  %20 = icmp ne %struct.page** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64*, i64** @pcpu_get_pages_and_bitmap.bitmap, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.page**, %struct.page*** @pcpu_get_pages_and_bitmap.pages, align 8
  %29 = icmp ne %struct.page** %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = call i8* @pcpu_mem_alloc(i64 %31)
  %33 = bitcast i8* %32 to %struct.page**
  store %struct.page** %33, %struct.page*** @pcpu_get_pages_and_bitmap.pages, align 8
  br label %34

34:                                               ; preds = %30, %27, %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64*, i64** @pcpu_get_pages_and_bitmap.bitmap, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = call i8* @pcpu_mem_alloc(i64 %41)
  %43 = bitcast i8* %42 to i64*
  store i64* %43, i64** @pcpu_get_pages_and_bitmap.bitmap, align 8
  br label %44

44:                                               ; preds = %40, %37, %34
  %45 = load %struct.page**, %struct.page*** @pcpu_get_pages_and_bitmap.pages, align 8
  %46 = icmp ne %struct.page** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64*, i64** @pcpu_get_pages_and_bitmap.bitmap, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %44
  store %struct.page** null, %struct.page*** %4, align 8
  br label %65

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %21
  %53 = load %struct.page**, %struct.page*** @pcpu_get_pages_and_bitmap.pages, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @memset(%struct.page** %53, i32 0, i64 %54)
  %56 = load i64*, i64** @pcpu_get_pages_and_bitmap.bitmap, align 8
  %57 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %58 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @pcpu_unit_pages, align 4
  %61 = call i32 @bitmap_copy(i64* %56, i32 %59, i32 %60)
  %62 = load i64*, i64** @pcpu_get_pages_and_bitmap.bitmap, align 8
  %63 = load i64**, i64*** %6, align 8
  store i64* %62, i64** %63, align 8
  %64 = load %struct.page**, %struct.page*** @pcpu_get_pages_and_bitmap.pages, align 8
  store %struct.page** %64, %struct.page*** %4, align 8
  br label %65

65:                                               ; preds = %52, %50
  %66 = load %struct.page**, %struct.page*** %4, align 8
  ret %struct.page** %66
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i8* @pcpu_mem_alloc(i64) #1

declare dso_local i32 @memset(%struct.page**, i32, i64) #1

declare dso_local i32 @bitmap_copy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
