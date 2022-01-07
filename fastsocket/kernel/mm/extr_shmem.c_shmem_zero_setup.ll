; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem.c_shmem_zero_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem.c_shmem_zero_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32*, %struct.file*, i64, i64 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"dev/zero\00", align 1
@shmem_vm_ops = common dso_local global i32 0, align 4
@VM_CAN_NONLINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shmem_zero_setup(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.file* @shmem_file_setup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16)
  store %struct.file* %17, %struct.file** %4, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = call i64 @IS_ERR(%struct.file* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.file* %22)
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 2
  %27 = load %struct.file*, %struct.file** %26, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load %struct.file*, %struct.file** %31, align 8
  %33 = call i32 @fput(%struct.file* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 2
  store %struct.file* %35, %struct.file** %37, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  store i32* @shmem_vm_ops, i32** %39, align 8
  %40 = load i32, i32* @VM_CAN_NONLINEAR, align 4
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %21
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.file* @shmem_file_setup(i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
