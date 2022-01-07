; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_anon_vma_compatible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_anon_vma_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i32, i64 }

@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_area_struct*)* @anon_vma_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anon_vma_compatible(%struct.vm_area_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = call i32 @vma_policy(%struct.vm_area_struct* %13)
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = call i32 @vma_policy(%struct.vm_area_struct* %15)
  %17 = call i64 @mpol_equal(i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %12
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %19
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %30, %33
  %35 = load i32, i32* @VM_READ, align 4
  %36 = load i32, i32* @VM_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VM_EXEC, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %27
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = zext i32 %57 to i64
  %59 = ashr i64 %56, %58
  %60 = add nsw i64 %49, %59
  %61 = icmp eq i64 %46, %60
  br label %62

62:                                               ; preds = %43, %27, %19, %12, %2
  %63 = phi i1 [ false, %27 ], [ false, %19 ], [ false, %12 ], [ false, %2 ], [ %61, %43 ]
  %64 = zext i1 %63 to i32
  ret i32 %64
}

declare dso_local i64 @mpol_equal(i32, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
