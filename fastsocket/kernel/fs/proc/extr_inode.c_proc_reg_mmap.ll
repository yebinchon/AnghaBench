; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.proc_dir_entry = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.file*, %struct.vm_area_struct*)* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @proc_reg_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_reg_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.file*, %struct.vm_area_struct*)*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.proc_dir_entry* @PDE(i32 %14)
  store %struct.proc_dir_entry* %15, %struct.proc_dir_entry** %6, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %19 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %22 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %27 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %54

30:                                               ; preds = %2
  %31 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %32 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %36 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %38, align 8
  store i32 (%struct.file*, %struct.vm_area_struct*)* %39, i32 (%struct.file*, %struct.vm_area_struct*)** %8, align 8
  %40 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %41 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %8, align 8
  %44 = icmp ne i32 (%struct.file*, %struct.vm_area_struct*)* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %8, align 8
  %47 = load %struct.file*, %struct.file** %4, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = call i32 %46(%struct.file* %47, %struct.vm_area_struct* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %30
  %51 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %52 = call i32 @pde_users_dec(%struct.proc_dir_entry* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.proc_dir_entry* @PDE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pde_users_dec(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
