; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_arch_unmap_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_arch_unmap_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, i64, i32, i32 }

@sysctl_unmap_area_factor = common dso_local global i32 0, align 4
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_unmap_area(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @sysctl_unmap_area_factor, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 1
  store i64 -1, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %17, %13
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = load i32, i32* %5, align 4
  %42 = sdiv i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %33, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %47 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %30
  br label %52

52:                                               ; preds = %51, %29
  ret void
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
