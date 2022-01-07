; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_expand_downwards.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_expand_downwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64)* @expand_downwards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_downwards(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load i64, i64* @PAGE_MASK, align 8
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @security_file_mmap(i32* null, i32 0, i32 0, i32 0, i64 %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %16
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = call i32 @vma_lock_anon_vma(%struct.vm_area_struct* %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %26
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = lshr i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ule i64 %49, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %34
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @acct_stack_growth(%struct.vm_area_struct* %55, i64 %56, i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %71 = call i32 @perf_event_mmap(%struct.vm_area_struct* %70)
  br label %72

72:                                               ; preds = %61, %54
  br label %73

73:                                               ; preds = %72, %34
  br label %74

74:                                               ; preds = %73, %26
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %76 = call i32 @vma_unlock_anon_vma(%struct.vm_area_struct* %75)
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %78 = call i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %24, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @security_file_mmap(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @vma_lock_anon_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @acct_stack_growth(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_unlock_anon_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
