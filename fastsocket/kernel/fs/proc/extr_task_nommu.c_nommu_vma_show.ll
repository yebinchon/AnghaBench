; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_nommu.c_nommu_vma_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_nommu.c_nommu_vma_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i64, %struct.file* }
%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%08lx-%08lx %c%c%c%c %08llx %02x:%02x %lu %n\00", align 1
@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vm_area_struct*)* @nommu_vma_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nommu_vma_show(%struct.seq_file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 4
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %6, align 8
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = icmp ne %struct.file* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 4
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %11, align 8
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = shl i64 %39, %40
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %20, %2
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @VM_READ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 114, i32 45
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @VM_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 119, i32 45
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @VM_EXEC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 120, i32 45
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @VM_MAYSHARE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %42
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @VM_SHARED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 83, i32 115
  br label %81

80:                                               ; preds = %42
  br label %81

81:                                               ; preds = %80, %73
  %82 = phi i32 [ %79, %73 ], [ 112, %80 ]
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @MAJOR(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @MINOR(i32 %86)
  %88 = load i64, i64* %5, align 8
  %89 = call i32 (%struct.seq_file*, i8*, i32, i8, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %46, i8 signext %50, i32 %56, i32 %62, i32 %68, i32 %82, i64 %83, i32 %85, i32 %87, i64 %88, i32* %9)
  %90 = load %struct.file*, %struct.file** %6, align 8
  %91 = icmp ne %struct.file* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 73, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 1, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %92
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (%struct.seq_file*, i8*, i32, i8, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %102, i8 signext 32)
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = load %struct.file*, %struct.file** %6, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 0
  %107 = call i32 @seq_path(%struct.seq_file* %104, %struct.TYPE_6__* %106, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %100, %81
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = call i32 @seq_putc(%struct.seq_file* %109, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8 signext, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @seq_path(%struct.seq_file*, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
