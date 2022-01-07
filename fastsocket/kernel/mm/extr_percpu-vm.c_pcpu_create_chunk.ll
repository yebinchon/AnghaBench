; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_percpu-vm.c_pcpu_create_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_percpu-vm.c_pcpu_create_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i64, %struct.vm_struct** }
%struct.vm_struct = type { i64 }

@pcpu_group_offsets = common dso_local global i64* null, align 8
@pcpu_group_sizes = common dso_local global i32 0, align 4
@pcpu_nr_groups = common dso_local global i32 0, align 4
@pcpu_atom_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcpu_chunk* ()* @pcpu_create_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcpu_chunk* @pcpu_create_chunk() #0 {
  %1 = alloca %struct.pcpu_chunk*, align 8
  %2 = alloca %struct.pcpu_chunk*, align 8
  %3 = alloca %struct.vm_struct**, align 8
  %4 = call %struct.pcpu_chunk* (...) @pcpu_alloc_chunk()
  store %struct.pcpu_chunk* %4, %struct.pcpu_chunk** %2, align 8
  %5 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %6 = icmp ne %struct.pcpu_chunk* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.pcpu_chunk* null, %struct.pcpu_chunk** %1, align 8
  br label %36

8:                                                ; preds = %0
  %9 = load i64*, i64** @pcpu_group_offsets, align 8
  %10 = load i32, i32* @pcpu_group_sizes, align 4
  %11 = load i32, i32* @pcpu_nr_groups, align 4
  %12 = load i32, i32* @pcpu_atom_size, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vm_struct** @pcpu_get_vm_areas(i64* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  store %struct.vm_struct** %14, %struct.vm_struct*** %3, align 8
  %15 = load %struct.vm_struct**, %struct.vm_struct*** %3, align 8
  %16 = icmp ne %struct.vm_struct** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %19 = call i32 @pcpu_free_chunk(%struct.pcpu_chunk* %18)
  store %struct.pcpu_chunk* null, %struct.pcpu_chunk** %1, align 8
  br label %36

20:                                               ; preds = %8
  %21 = load %struct.vm_struct**, %struct.vm_struct*** %3, align 8
  %22 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %23 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %22, i32 0, i32 1
  store %struct.vm_struct** %21, %struct.vm_struct*** %23, align 8
  %24 = load %struct.vm_struct**, %struct.vm_struct*** %3, align 8
  %25 = getelementptr inbounds %struct.vm_struct*, %struct.vm_struct** %24, i64 0
  %26 = load %struct.vm_struct*, %struct.vm_struct** %25, align 8
  %27 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** @pcpu_group_offsets, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %34 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  store %struct.pcpu_chunk* %35, %struct.pcpu_chunk** %1, align 8
  br label %36

36:                                               ; preds = %20, %17, %7
  %37 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %1, align 8
  ret %struct.pcpu_chunk* %37
}

declare dso_local %struct.pcpu_chunk* @pcpu_alloc_chunk(...) #1

declare dso_local %struct.vm_struct** @pcpu_get_vm_areas(i64*, i32, i32, i32, i32) #1

declare dso_local i32 @pcpu_free_chunk(%struct.pcpu_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
