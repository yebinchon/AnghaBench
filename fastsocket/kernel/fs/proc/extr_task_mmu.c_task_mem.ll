; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_task_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_task_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.mm_struct = type { i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@swap_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [170 x i8] c"VmPeak:\09%8lu kB\0AVmSize:\09%8lu kB\0AVmLck:\09%8lu kB\0AVmHWM:\09%8lu kB\0AVmRSS:\09%8lu kB\0AVmData:\09%8lu kB\0AVmStk:\09%8lu kB\0AVmExe:\09%8lu kB\0AVmLib:\09%8lu kB\0AVmPTE:\09%8lu kB\0AVmSwap:\09%8lu kB\0A\00", align 1
@PTRS_PER_PTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_mem(%struct.seq_file* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %27 = call i64 @get_mm_rss(%struct.mm_struct* %26)
  store i64 %27, i64* %12, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  %45 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  store i64 %48, i64* %5, align 8
  %49 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PAGE_ALIGN(i32 %51)
  %53 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PAGE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = sub nsw i32 %52, %57
  %59 = ashr i32 %58, 10
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = sub nsw i32 %64, 10
  %66 = shl i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %67, %68
  store i64 %69, i64* %7, align 8
  %70 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %71 = load i32, i32* @swap_usage, align 4
  %72 = call i64 @get_mm_counter(%struct.mm_struct* %70, i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* @PAGE_SHIFT, align 4
  %76 = sub nsw i32 %75, 10
  %77 = zext i32 %76 to i64
  %78 = shl i64 %74, %77
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %81 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %79, %82
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = sub nsw i32 %84, 10
  %86 = zext i32 %85 to i64
  %87 = shl i64 %83, %86
  %88 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PAGE_SHIFT, align 4
  %92 = sub nsw i32 %91, 10
  %93 = shl i32 %90, %92
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* @PAGE_SHIFT, align 4
  %96 = sub nsw i32 %95, 10
  %97 = zext i32 %96 to i64
  %98 = shl i64 %94, %97
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* @PAGE_SHIFT, align 4
  %101 = sub nsw i32 %100, 10
  %102 = zext i32 %101 to i64
  %103 = shl i64 %99, %102
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = sub nsw i32 %105, 10
  %107 = zext i32 %106 to i64
  %108 = shl i64 %104, %107
  %109 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %110 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @PAGE_SHIFT, align 4
  %113 = sub nsw i32 %112, 10
  %114 = zext i32 %113 to i64
  %115 = shl i64 %111, %114
  %116 = trunc i64 %115 to i32
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i32, i32* @PTRS_PER_PTE, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %123 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %121, %125
  %127 = lshr i64 %126, 10
  %128 = trunc i64 %127 to i32
  %129 = load i64, i64* %8, align 8
  %130 = load i32, i32* @PAGE_SHIFT, align 4
  %131 = sub nsw i32 %130, 10
  %132 = zext i32 %131 to i64
  %133 = shl i64 %129, %132
  %134 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %87, i32 %93, i64 %98, i64 %103, i64 %108, i32 %116, i64 %117, i64 %118, i32 %128, i64 %133)
  ret void
}

declare dso_local i64 @get_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i64 @get_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, i32, i64, i64, i64, i32, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
