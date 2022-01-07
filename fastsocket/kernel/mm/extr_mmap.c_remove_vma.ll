; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_remove_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_remove_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, i64, %struct.TYPE_2__*, %struct.vm_area_struct* }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }

@VM_EXECUTABLE = common dso_local global i32 0, align 4
@vm_area_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_area_struct* (%struct.vm_area_struct*)* @remove_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 4
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  store %struct.vm_area_struct* %6, %struct.vm_area_struct** %3, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %16, align 8
  %18 = icmp ne i32 (%struct.vm_area_struct*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %23, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %26 = call i32 %24(%struct.vm_area_struct* %25)
  br label %27

27:                                               ; preds = %19, %12, %1
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @fput(i64 %35)
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VM_EXECUTABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @removed_exe_file_vma(i32 %46)
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %51 = call i32 @vma_policy(%struct.vm_area_struct* %50)
  %52 = call i32 @mpol_put(i32 %51)
  %53 = load i32, i32* @vm_area_cachep, align 4
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %55 = call i32 @kmem_cache_free(i32 %53, %struct.vm_area_struct* %54)
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  ret %struct.vm_area_struct* %56
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @removed_exe_file_vma(i32) #1

declare dso_local i32 @mpol_put(i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
