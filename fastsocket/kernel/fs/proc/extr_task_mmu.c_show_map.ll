; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_show_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_show_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i32, %struct.proc_maps_private* }
%struct.proc_maps_private = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_map(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.proc_maps_private*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vm_area_struct*
  store %struct.vm_area_struct* %9, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 3
  %12 = load %struct.proc_maps_private*, %struct.proc_maps_private** %11, align 8
  store %struct.proc_maps_private* %12, %struct.proc_maps_private** %6, align 8
  %13 = load %struct.proc_maps_private*, %struct.proc_maps_private** %6, align 8
  %14 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %13, i32 0, i32 0
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  store %struct.task_struct* %15, %struct.task_struct** %7, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = call i32 @show_map_vma(%struct.seq_file* %16, %struct.vm_area_struct* %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.vm_area_struct* @get_gate_vma(i32 %30)
  %32 = icmp ne %struct.vm_area_struct* %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %2
  ret i32 0
}

declare dso_local i32 @show_map_vma(%struct.seq_file*, %struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @get_gate_vma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
