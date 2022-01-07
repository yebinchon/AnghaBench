; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file*, %struct.TYPE_2__* }
%struct.fuse_file = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.vm_area_struct = type { i32, i32* }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32 }

@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@fuse_file_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @fuse_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_inode*, align 8
  %8 = alloca %struct.fuse_file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VM_SHARED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %2
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VM_MAYWRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %15
  %23 = load %struct.file*, %struct.file** %3, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %5, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %28)
  store %struct.fuse_conn* %29, %struct.fuse_conn** %6, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %30)
  store %struct.fuse_inode* %31, %struct.fuse_inode** %7, align 8
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load %struct.fuse_file*, %struct.fuse_file** %33, align 8
  store %struct.fuse_file* %34, %struct.fuse_file** %8, align 8
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %36 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %39 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %38, i32 0, i32 0
  %40 = call i64 @list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %22
  %43 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %44 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %43, i32 0, i32 0
  %45 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %46 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %45, i32 0, i32 0
  %47 = call i32 @list_add(i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %42, %22
  %49 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %50 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %15, %2
  %53 = load %struct.file*, %struct.file** %3, align 8
  %54 = call i32 @file_accessed(%struct.file* %53)
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  store i32* @fuse_file_vm_ops, i32** %56, align 8
  ret i32 0
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
