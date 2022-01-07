; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_nommu.c_nommu_region_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_nommu.c_nommu_region_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vm_region = type { i32, i64, i32, i32, %struct.file* }
%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%08lx-%08lx %c%c%c%c %08llx %02x:%02x %lu %n\00", align 1
@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vm_region*)* @nommu_region_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nommu_region_show(%struct.seq_file* %0, %struct.vm_region* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vm_region*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vm_region* %1, %struct.vm_region** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %12 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %15 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %14, i32 0, i32 4
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %6, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = icmp ne %struct.file* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %21 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %20, i32 0, i32 4
  %22 = load %struct.file*, %struct.file** %21, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %19, %2
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %39 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %42 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @VM_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 114, i32 45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @VM_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 119, i32 45
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @VM_EXEC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 120, i32 45
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @VM_MAYSHARE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %36
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @VM_SHARED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 83, i32 115
  br label %75

74:                                               ; preds = %36
  br label %75

75:                                               ; preds = %74, %67
  %76 = phi i32 [ %73, %67 ], [ 112, %74 ]
  %77 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %78 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @MAJOR(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @MINOR(i32 %85)
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (%struct.seq_file*, i8*, i32, i8, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i8 signext %44, i32 %50, i32 %56, i32 %62, i32 %76, i32 %82, i32 %84, i32 %86, i64 %87, i32* %9)
  %89 = load %struct.file*, %struct.file** %6, align 8
  %90 = icmp ne %struct.file* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %75
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 73, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %91
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (%struct.seq_file*, i8*, i32, i8, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %101, i8 signext 32)
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load %struct.file*, %struct.file** %6, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 0
  %106 = call i32 @seq_path(%struct.seq_file* %103, %struct.TYPE_6__* %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %99, %75
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = call i32 @seq_putc(%struct.seq_file* %108, i8 signext 10)
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
